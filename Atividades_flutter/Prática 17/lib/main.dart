import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController celsiusController = TextEditingController();

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
                controller: celsiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => celsiusController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a temperatura em celsius',
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Navegar para a Segunda Rota"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                    celsiusController.text
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

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
          argumentos.celsius + " ºC = " +  argumentos.conversao() + ' ºF',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String celsius;

  ArgumentosDaRota(this.celsius);

  conversao() => ((double.parse(celsius)) * 1.8 + 32).toStringAsFixed(2);
}
