import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'gridicons.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      drawerEdgeDragWidth: 250,
      drawerScrimColor: Colors.black.withOpacity(0.5),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
              ),
              child: Text(
                'YouFit',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ExpansionTile(
              title: Text(
                'Contact us',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('balogundaniel2001@yahoo.com')),
                ListTile(
                  leading: Icon(Icons.message_outlined),
                  title: Text('+234(0)701 710 8311'),
                ),
                ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text('Head Office: 2-3 Branko, Island, Lagos.'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Balogun Daniel')),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Male'),
                ),
                ListTile(
                  leading: Icon(Icons.location_pin),
                  title: Text('Liverpool, United Kingdom'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.brown),
              ),
              children: [
                ListTile(
                  leading: Icon(Icons.message_outlined),
                  title: Text('Privacy and User Agreement'),
                  onTap: () {
                    Navigator.pushNamed(context, '/privacy');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info_rounded),
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ListTile(
              // leading: Icon(Icons.favorite),
              title: Text('Rate Us'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Colors.amber.shade600,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cloud.png',
                color: Colors.amber.shade100.withOpacity(0.2),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        shape: BoxShape.circle,
                      ),
                      child: Builder(builder: (context) {
                        return IconButton(
                          icon: Icon(Icons.menu_open_sharp),
                          color: Colors.amber,
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      }),
                    ),
                  ),
                  Text(
                    'Welcome to',
                    style: Theme.of(context).textTheme.display1.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                  ),
                  Text(
                    'YouFit',
                    style: Theme.of(context).textTheme.display1.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        color: Colors.teal),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'search',
                          icon: Icon(
                            Icons.search,
                            size: 35,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                      // margin: EdgeInsets.all(5),
                      height: size.height * .50,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GridIcon(
                                  sroute: 'assets/excercise.png',
                                  productname: 'Daily Exercise',
                                  route: '/dailyexercise'),
                              GridIcon(
                                  sroute: 'assets/food.png',
                                  productname: 'Diet \nRecommendation',
                                  route: '/diet'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GridIcon(
                                  sroute: 'assets/meditation.png',
                                  productname: 'Meditation',
                                  route: '/meditation'),
                              GridIcon(
                                  sroute: 'assets/sport.png',
                                  productname: 'Health Tips',
                                  route: '/health'),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 5),
                  )
                ],
                border: Border.all(color: Colors.blueGrey, width: 0.05),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        iconSize: 35,
                        color: Colors.amber.shade700,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.toc_outlined),
                        onPressed: () {},
                        iconSize: 35,
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
