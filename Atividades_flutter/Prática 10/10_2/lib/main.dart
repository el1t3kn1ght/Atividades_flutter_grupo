import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";

  imc() {
    double peso = double.parse(this.num01Controller.text);
    double altura = double.parse(this.num02Controller.text);
    double imc = peso / (altura * altura);
    this.resp = imc.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: num01Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num01Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o peso',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: num02Controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num02Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a altura',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(imc);
              },
              child: Text(
                'IMC',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            DataTable(columns: [
              DataColumn(label: Text('IMC')),
              DataColumn(label: Text('Classificação'))
            ], rows: [
              DataRow(cells: [
                DataCell(Text('< 16')),
                DataCell(Text('Magreza grave'))
              ]),
              DataRow(cells: [
                DataCell(Text('16 < 17')),
                DataCell(Text('Magreza moderada'))
              ]),
              DataRow(cells: [
                DataCell(Text('17 < 18,5')),
                DataCell(Text('Magreza leve'))
              ]),
              DataRow(cells: [
                DataCell(Text('18,5 < 25')),
                DataCell(Text('Saudável'))
              ]),
              DataRow(cells: [
                DataCell(Text('25 < 30')),
                DataCell(Text('Sobrepeso'))
              ]),
              DataRow(cells: [
                DataCell(Text('30 < 35')),
                DataCell(Text('Obesidade Grau I'))
              ]),
              DataRow(cells: [
                DataCell(Text('35 < 40')),
                DataCell(Text('Obesidade Grau II (severa)'))
              ]),
              DataRow(cells: [
                DataCell(Text('> 40')),
                DataCell(Text('Obesidade Grau III (mórbida)'))
              ])
            ])
          ],
        ),
      ),
    );
  }
}
