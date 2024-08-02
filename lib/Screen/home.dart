import 'package:dashbord/Widgets/CircularDesign.dart';
import 'package:dashbord/Widgets/FeatureBox.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),


             Padding(
               padding: const EdgeInsets.only(left: 12),
               child: Text(
                "Features",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cera Pro",
                    fontSize: 30, // Responsive font size
                    fontWeight: FontWeight.bold
                ),
                           ),
             ),

         // Increased height for better spacing
          Container(
            width: w * 0.9, // Adjust width to a larger percentage for better responsiveness
            height: h * 0.6, // Adjust height to a percentage of screen height
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Make it horizontally scrollable on smaller screens
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FeatureBox(
                        img: Image.asset(
                          "img/3.jpg",
                          fit: BoxFit.cover,
                        ),
                        headertext: "Feature 1",
                        description: "Feel free to adjust the text to better \nmatch the actual feature."),
                    SizedBox(
                      width: w * 0.05, // Responsive spacing
                    ),
                    FeatureBox(
                        img: Image.asset("img/4.jpeg", fit: BoxFit.cover),
                        headertext: "Feature 2",
                        description: "Experience the tranquility of pristine\nlakeside views."),
                    SizedBox(
                      width: w * 0.05, // Responsive spacing
                    ),
                    FeatureBox(
                        img: Image.asset("img/5.jpeg", fit: BoxFit.cover),
                        headertext: "Feature 3",
                        description: "This description emphasizes modernity\nd innovation, which can fit."),

                  ],

                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
                   "How it Works?",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Cera Pro",
                fontSize: 30
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Company A tranforms your processes into easy workflows.Here how it works:",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Cera Pro",
                fontSize: 19

              ),
            ),
          ),
          SizedBox(
            height: h*0.15,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,


              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Center align the row
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Circulardesign(number: "1", headline: 'Input Your Vision', description: 'My vision involves around \n    actual meaning of \n analyze various aspects\n    with understanding \nall of the decision making'),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 180),
                    child: SizedBox(
                      width: w*0.2, // Adjust width to a percentage of screen width
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Circulardesign(number: "2", headline: 'Get Your Workflow', description: "This workflow allows you to \n   handle a variety of inputs  \n         and provide useful\n   accurate, and contextually  \n all of appropriate responses." ),

                  SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 180),
                    child: SizedBox(
                      width: w*0.23, // Adjust width to a percentage of screen width
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),

                  Circulardesign(number: "3", headline: 'Customize Your Worldflow', description: '    This customized workflow ensures \n           a and efficient approach  \n                to handling queries \n           combining advanced NLP.  \nTo integrate the basic idea of workflow',),


                ],

              ),


          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
