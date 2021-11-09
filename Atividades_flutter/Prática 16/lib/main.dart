import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class Comparacao {
  double etanol;
  double gasolina;

  Comparacao(this.etanol, this.gasolina);

  razao() => etanol/gasolina;

  etanolgasolina() => razao() <= 0.7 ?
  "Abasteça com etanol" : "Abasteça com gasolina";
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController tituloController = TextEditingController();
  final TextEditingController textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: tituloController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => tituloController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço do etanol',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: textoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => textoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço da gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Comparacao comparacao = Comparacao(
                double.parse(tituloController.text),
                double.parse(textoController.text),
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SegundaRota(comparacao)));
            },
            child: Text('Ir para a Segunda Rota'),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Comparacao comparacao;

  SegundaRota(this.comparacao);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${comparacao.etanol.toStringAsFixed(2)} / '
                  '${comparacao.gasolina.toStringAsFixed(2)} = '
                  '${comparacao.razao().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${comparacao.etanolgasolina()}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
