import 'package:flutter/material.dart';
import 'horizontal_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new HorizontalList(),
              height: deviceSize.height * 0.09,
            )
          : Column(

      )
    );
  }
}
