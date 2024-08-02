import 'package:flutter/material.dart';

class Circulardesign extends StatelessWidget {
  final String number;
  final String headline;
  final String description;

  const Circulardesign({
    super.key,
    required this.number,
    required this.headline,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    number,
                    style: TextStyle(color: Colors.white, fontSize: 34),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjusted padding
            child: Text(
              headline,
              style: TextStyle(
                fontSize: 24, // Reduced font size for better alignment
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                // Center align the text
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjusted padding
            child: Text(
              description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18, // Reduced font size for better readability
                // Center align the text
              ),
            ),
          ),
        ],
      ),
    );
  }
}
