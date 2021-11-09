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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Container(
          color: Colors.amber,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("Ana"),
                accountEmail: Text("ana@ana.com.br"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              /* UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("Ana"),
                accountEmail: Text("ana@ana.com.br"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/img/owl.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),*/
              ListTile(

                leading: Icon(Icons.video_collection),
                title: Text("Rota 02"),
                subtitle: Text("Siga para a Rota 02."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SegundaRota.caminhoDaRota,
                    arguments: ArgumentosDaRota('Segunda Rota', Colors.purple[900]),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.analytics),
                title: Text("Rota 03"),
                subtitle: Text("Siga para a Rota 03"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SegundaRota.caminhoDaRota,
                    arguments: ArgumentosDaRota('Terceira Rota', Colors.blue[900]),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Rota 01"),
                subtitle: Text("Voltar para a Rota 01"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('Voltar para a Rota 01.');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Container(
        color: argumentos.cor,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: Text(
                  argumentos.titulo,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Voltar para a Primeira Rota'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Rota'),
      ),
      body: Container(
        color: argumentos.cor,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: Text(
                  argumentos.titulo,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Voltar para a Primeira Rota'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  Color? cor;

  ArgumentosDaRota(this.titulo, this.cor);
}