import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final Image img;
  final String headertext;
  final String description;

  const FeatureBox({
    super.key,
    required this.img,
    required this.headertext,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Column(
mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(

        ),
        Container(
          
          width: 270,
          height: 270,// Adjust height as needed
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: img),
        ),
        SizedBox(
          height: 10,
        ),


             Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    headertext,
                    style: TextStyle(
                        color: Colors.white,

                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cera Pro",
                    ),
                  ),
                ],
                         ),
             ),


      ],
    );
  }
}
