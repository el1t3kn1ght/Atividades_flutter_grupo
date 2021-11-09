import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/"
                    "Hong_Kong_Harbour_Night_2019-06-11.jpg/800px-Hong_Kong_"
                    "Harbour_Night_2019-06-11.jpg"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HongKong()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.network(
                    "https://turistaprofissional.com/wp-content/uploads/2017/11/grand-palace-bangkok.jpg"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Bangkok()));
                },
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.network(
                    "https://www.melhoresdestinos.com.br/wp-content/uploads/2019/06/passagens-aereas-londres-capa2019-05-820x430.jpg"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Londres()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HongKong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hong Kong"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Hong Kong',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(100),
            ),
            Container(
              child: Text(
                'Hong Kong, ex-colônia britânica, é um território autônomo no sudeste da China. Seu centro urbano vibrante e densamente povoado é também um porto importante e um centro financeiro global de destaque, com um horizonte marcado por arranha-céus. ',
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

class Bangkok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bangkok"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Bangkok',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(100),
            ),
            Container(
              child: Text(
                'Bangcoc, a capital da Tailândia, é uma grande cidade conhecida pelos santuários ornamentados e pela animada vida urbana. O rio Chao Phraya, repleto de barcos, abastece a rede de canais, passando pelo distrito real de Rattanakosin, onde fica o opulento Grande Palácio e seu sagrado templo Wat Phra Kaew.',
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

class Londres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Londres"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Londres',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(100),
            ),
            Container(
              child: Text(
                'Londres, capital da Inglaterra e do Reino Unido, é uma cidade do século 21 com uma história que remonta à era romana. Seu centro abriga as sedes imponentes do Parlamento, a famosa torre do relógio do Big Ben e a Abadia de Westminster, local de coroação dos monarcas britânicos.',
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
