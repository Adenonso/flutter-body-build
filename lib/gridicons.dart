import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridIcon extends StatelessWidget {

  final String route;
  // final icontype;
  final String productname;
  final sroute;

  const GridIcon({Key key,
    this.route, this.productname, this.sroute
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.37,
      height: MediaQuery.of(context).size.height * 0.23,
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
        border: Border.all(
            color: Colors.blueGrey,
            width: 0.5
        ),
      ),
      padding: EdgeInsets.all(1.0),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: IconButton(
              icon: Image.asset(sroute,),iconSize: 100,
              onPressed: () {
                Navigator.pushNamed(context, route);
              } ,
            ),
          ),
          Container(//Carname and model
            child: Text(productname, style: GoogleFonts.lato(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 10.0
            ),),
          )
        ],
      ),
    );
  }
}
