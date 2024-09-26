import 'package:flutter/material.dart';

import 'A_Series_of_Unfortunate_Events.dart';
import 'The Hobbit.dart';
import 'Harry_Potter_Series.dart';
import 'Percy_Jackson_&_the_Olympians.dart';
import 'TheLordoftheRings.dart';
import 'The_Chronicles_of_Narnia.dart';

class Fantasy_And_Adventure extends StatefulWidget {
  const Fantasy_And_Adventure({super.key});

  @override
  State<Fantasy_And_Adventure> createState() => _Fantasy_And_AdventureState();
}
class _Fantasy_And_AdventureState extends State<Fantasy_And_Adventure> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/Adventure banner 2.png'),
                    fit: BoxFit.cover,
                  ),
                  color: const Color(0xFF231633),
                ),
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  "Mystical Journeys",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Creating the containers layout in rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Harry_Potter_Series()));
                      },
                      child: _buildBookContainer('assets/Adventure1.png', "Harry Potter")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const The_Chronicles_of_Narnia ()));
                      },
                      child: _buildBookContainer('assets/Adventure2.png', 'The Chronicles of Narnia ')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TheHobbit()));
                      },
                      child: _buildBookContainer('assets/Adventure.png', 'The Hobbit')),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const  PercyJacksonAndTheOlympians() ));
                      },
                      child: _buildBookContainer('assets/Adventur4.png', 'Percy Jackson & the Olympians')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ASeriesOfUnfortunateEvents()));
                      },
                      child: _buildBookContainer('assets/Adventure5.png', 'A Series of Unfortunate Events')),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TheLordOfTheRings()));
                    },
                      child: _buildBookContainer('assets/Adventure6.png', 'The Lord of the Rings'))
                ],
              ),
              // Add more rows of containers here if needed
            ],
          ),
        ),
      ),
    );
  }

  // Function to build book container with custom text
  Widget _buildBookContainer(String imagePath, String text) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFF231633),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            color: Colors.brown.withOpacity(0.9),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 9,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
