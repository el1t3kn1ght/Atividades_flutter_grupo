import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {

  final TextEditingController realController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: realController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => realController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o valor em Real',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 7, 0, 7),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Próximo'),
                      Icon(
                        Icons.navigate_next,
                      )
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SegundaRota.caminhoDaRota,
                    arguments: realController.text,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';

  final TextEditingController cotacaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String real =
    ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: cotacaoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => cotacaoController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a cotação em Dolar',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 7, 0, 7),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Próximo'),
                      Icon(
                        Icons.navigate_next,
                      )
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    TerceiraRota.caminhoDaRota,
                    arguments: ArgumentosDaRota(real, cotacaoController.text),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
    ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor'),
      ),
      body: Center(
        child: Text(
         'R\$' + argumentos.real + ' = US\$' + argumentos.conversao(),
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String real = '';
  String cotacao = '';

  ArgumentosDaRota(this.real, this.cotacao);
  conversao() => (double.parse(real) / double.parse(cotacao)).toStringAsFixed(2);
}
