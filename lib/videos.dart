import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Videos extends StatelessWidget {

  final String route;
  final icontype;
  final String productname;
  final scolor;

  const Videos({Key key,
    this.route, this.productname, this.icontype, this.scolor
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
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: IconButton(
              color: scolor,
              icon: Icon(icontype),iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, route);
                Icon(icontype, color: Colors.cyan,);
              } ,
            ),
          ),
          Container(//Carname and model
            child: Text(productname, style: GoogleFonts.aBeeZee(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 10.0
            ),),
          )
        ],
      ),
    );
  }
}
