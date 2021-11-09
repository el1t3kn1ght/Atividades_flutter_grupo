import 'package:flutter/material.dart';
import 'descricao.dart';

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
      body: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Descricao(
                    'Nova York',
                    'Nova York, EUA',
                    'A cidade de Nova York compreende 5 distritos situados'
                        'no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Ma'
                        'nhattan, um distrito com alta densidade demográfica que está entre os principa'
                        'is centros comerciais, financeiros e culturais do mundo (Wikipedia)'),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Descricao(
                    'A',
                    'A, B',
                    'A cidade de Nova York compreende 5 distritos situados'
                        'no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Ma'
                        'nhattan, um distrito com alta densidade demográfica que está entre os principa'
                        'is centros comerciais, financeiros e culturais do mundo (Wikipedia)'),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Descricao(
                    'X',
                    'X, Y',
                    'A cidade de Nova York compreende 5 distritos situados'
                        'no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Ma'
                        'nhattan, um distrito com alta densidade demográfica que está entre os principa'
                        'is centros comerciais, financeiros e culturais do mundo (Wikipedia)'),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Descricao(
                    'Nova York',
                    'Nova York, EUA',
                    'A cidade de Nova York compreende 5 distritos situados'
                        'no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Ma'
                        'nhattan, um distrito com alta densidade demográfica que está entre os principa'
                        'is centros comerciais, financeiros e culturais do mundo (Wikipedia)'),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Descricao(
                    'Nova York',
                    'Nova York, EUA',
                    'A cidade de Nova York compreende 5 distritos situados'
                        'no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Ma'
                        'nhattan, um distrito com alta densidade demográfica que está entre os principa'
                        'is centros comerciais, financeiros e culturais do mundo (Wikipedia)'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
