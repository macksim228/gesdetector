import 'package:flutter/material.dart';
import 'Ut.dart';

class OnTap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnTapState();
  }
}

class OnTapState extends State <OnTap> {
  bool flag = false;

  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(child: getCentrShape(flag),
        onTap: () {
          setState(() {
            flag = !flag;
            print(flag.toString());
          });
        },
      ),
    );
  }

  Widget getCentrShape(bool flag1) {
    if (!flag1) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(240),
          border: Border.all(color: Colors.yellow, width: 10.0,),
          color: Colors.black,
        ),
        child:
        ClipRRect(
          borderRadius: BorderRadius.circular(220.0),
          child: Image.asset(
            Ut.getMisha(),
            fit: BoxFit.fill,
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(240),
          border: Border.all(color: Colors.yellow, width: 10.0,),
          color: Colors.black,
        ),
        child:
        ClipRRect(
          borderRadius: BorderRadius.circular(220.0),
          child: Image.asset(
            Ut.getRouse(),
            fit: BoxFit.fill,
          ),
        ),
      );
    }
  }
}