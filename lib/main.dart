import 'package:flutter/material.dart';
import 'Ut.dart' ;
import 'central_column.dart';
void main() {
  runApp(Basya());
}

class Basya extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Мама',
      theme: ThemeData(primarySwatch: Colors.deepPurple,
        visualDensity:
        VisualDensity.adaptivePlatformDensity,
      ),
      home: MainWidget(),


    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Ut.getWallpaper()),
            fit: BoxFit.fill,
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Expanded(
              flex: 1,
              child:
              Container(padding: EdgeInsets.only(top: 20),
                child: Text('Подарок маме',
                style: TextStyle(color: Colors.pink,fontSize: 22,inherit: false),),
              ),
            ),
             Expanded(child: CentrColumn(),flex: 10,)
            ],

          ),
        ),);
  }
}
