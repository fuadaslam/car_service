import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final stories = Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 70.0,
            height: 70.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage(
                    "assets/images/car.png"),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}
