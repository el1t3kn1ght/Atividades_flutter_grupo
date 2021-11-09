import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  String cabecalho = '', titulo = '', desc = '';

  Descricao(this.cabecalho, this.titulo, this.desc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$cabecalho"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '$titulo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(100),
            ),
            Container(
              child: Text(
                '$desc',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              margin: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}