import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'videos.dart';
import 'package:video_player/video_player.dart';
import 'playvideo.dart';

class DailyExercise extends StatefulWidget {
  @override
  State<DailyExercise> createState() => _DailyExerciseState();
}

class _DailyExerciseState extends State<DailyExercise> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Colors.lightGreen[900],
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: Image.asset(
                  'assets/tennis.png',
                  color: Color(0xFFFFEB3B),
                  scale: 7,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Daily Exercise',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Color(0xFFFFEB3B)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '3-10 MIN Course',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.values[0],
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Live happier and healthier by taking training \n'
                    'and sport exercises to build body\n'
                    'fitness and strength',
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.values[0],
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Color(0xFFFFEB3B),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 2),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'search',
                          icon: Icon(Icons.search,
                              size: 25, color: Colors.cyan[900]),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: size.height * .35,
                      child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          childAspectRatio: 2,
                          children: [
                            Videos(
                              scolor: Colors.yellow[600],
                              route: '/playvideo',
                              productname: 'Session 01',
                              icontype: Icons.play_circle_fill,
                            ),
                            Videos(
                                scolor: Colors.yellow[600],
                                route: '',
                                productname: 'Session 02',
                                icontype: Icons.play_circle_fill),
                            Videos(
                                scolor: Colors.yellow[600],
                                route: '',
                                productname: 'Session 03',
                                icontype: Icons.play_circle_fill),
                            Videos(
                                scolor: Colors.yellow[600],
                                route: '',
                                productname: 'Session 04',
                                icontype: Icons.play_circle_fill),
                            Videos(
                                scolor: Colors.yellow[600],
                                route: '',
                                productname: 'Session 05',
                                icontype: Icons.play_circle_fill),
                            Videos(
                                scolor: Colors.yellow[600],
                                route: '',
                                productname: 'Session 06',
                                icontype: Icons.play_circle_fill),
                          ])),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Exercise',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.values[0],
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(
                                'assets/tennis.png',
                                color: Colors.lightGreen[900],
                                scale: 17,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Level 2',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.values[0],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10.0),
                              ),
                            ),
                            Text(
                              'Start your journey to top performance',
                              style: GoogleFonts.lato(
                                  fontStyle: FontStyle.values[0],
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ],
                        ),
                        Container(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: IconButton(
                              icon: Icon(Icons.lock_outline_rounded),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
                          color: Colors.lightGreen.shade900),
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
