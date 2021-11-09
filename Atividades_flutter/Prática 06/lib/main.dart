import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.blue,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purple.withOpacity(0.0),
                    Colors.purple.withOpacity(0.3),
                    Colors.purple.withOpacity(1),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                    Colors.purple.withOpacity(0.0),
                    Colors.purple.withOpacity(0.3),
                    Colors.purple.withOpacity(1),
                  ])),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(
                  'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
