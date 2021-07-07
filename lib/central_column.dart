import 'package:flutter/material.dart';
import 'central_image.dart';
class CentrColumn extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 220,
          width: 220,
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: OnTap(),
        ),
        Container(
          width: 240,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.yellow,
              width: 5.0,
            ),
            color: Colors.black,
          ),
          child: RichText(
            textDirection: TextDirection.ltr,
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.cake_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Лайк',
                ),
              ],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          width: 240,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.yellow,
              width: 5.0,
            ),
            color: Colors.black,
          ),
          child: RichText(
            textDirection: TextDirection.ltr,
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.cake_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Сюрприз',
                ),
              ],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,

              ),
            ),
          ),
        ),
      ],
    );
  }
}
