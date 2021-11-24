import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'car_page.dart';
import 'hz_list.dart';

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  int _indextop = 0;
  int _index = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: new Icon(Icons.location_on),
                        onPressed: () {},
                        iconSize: 15,
                      ),
                      Text('Banglore',style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Honda City \n Petrol',style: TextStyle(fontSize: 12),),
                      IconButton(
                        icon: new Icon(Icons.search),
                        onPressed: () {},
                        iconSize: 25,
                      ),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: _getPage(currentPage),
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.car_repair,
              title: "",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CarPage()))),
          TabData(iconData: Icons.dashboard, title: ""),
          TabData(iconData: Icons.notifications, title: ""),
          // TabData(iconData: Icons.person, title: "Profile")
        ],
        initialSelection: 1,
        activeIconColor: Colors.red,
        circleColor: Colors.white,
        inactiveIconColor: Colors.black,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Container(
              margin: EdgeInsets.only(top: 10),
              child: SizedBox(
              height: 150, // card height
              child: PageView.builder(
                itemCount: 10,
                controller: PageController(viewportFraction: 0.8),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _indextop ? 1 : 0.9,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/carban1.png'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    );
                },
              ),
          ),
            ),



              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Looking For?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Column(
                children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*1.4,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.search,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Search service here',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 150, // card height
                      child: PageView.builder(
                        itemCount: 2,
                        controller: PageController(viewportFraction: 0.4),
                        onPageChanged: (int index) => setState(() => _index = index),
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == _index ? 1 : 1,
                            child:    Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/section.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Expanded(flex: 1, child: new InstaStories()),
                    Container(
                        height: 100,
                        child: MainPage()),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("SPECIAL OFFERS \n 40-60% OFF",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xffF99746)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/ban.png"),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/offban.png"),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("What's New",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/Path.png"),
                              Image.asset("assets/images/Path1.png")
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/car2.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(top: 200,left: 10),
                              child: Text("Body repair",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/oilchange.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Handpicked Services for \n Maximum Performance",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xffF99746)),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 150, // card height
                      child: PageView.builder(
                        itemCount: 10,
                        controller: PageController(viewportFraction: 0.9),
                        onPageChanged: (int index) => setState(() => _index = index),
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == _index ? 1 : 1,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child:  Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 1.0,
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/oilimg.png'),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 40,left: 10),
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white)
                                    ),
                                    child: Text('Oil Change Service',style:
                                    TextStyle(color: Colors.white),),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 70,left: 10),
                                      child:Text('Place scrolling Ads here',style:
                                        TextStyle(color: Colors.white),)),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
                ],
              ),
            ],
          ),
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the cars page"),
          ],
        );

      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the dashboard page"),
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the notification page"),
          ],
        );
    }
  }
}
