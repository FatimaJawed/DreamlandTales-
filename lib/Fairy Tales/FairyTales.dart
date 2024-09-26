import 'package:flutter/material.dart';
import 'BeautyAndTheBeast.dart';
import 'HanselandGretel.dart';
import 'Rapunzel.dart';
import 'Sleeping_Beauty.dart';
import 'TheEmperorsNewClothes.dart';
import 'ThePrincessandtheFrog.dart';

class FairyTales extends StatefulWidget {
  const FairyTales({Key? key}) : super(key: key);

  @override
  State<FairyTales> createState() => _FairyTalesState();
}

class _FairyTalesState extends State<FairyTales> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/aa.png'),
                    fit: BoxFit.cover,
                  ),
                  color: const Color(0xFF231633),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Classic Fairy Tales",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TheEmperorsNewClothesScreen()));
                    },
                      child: _buildBookContainer('assets/fairy3.png', "The Emperor's New Clothes")),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const BeautyAndTheBeast()));
                    },
                      child: _buildBookContainer('assets/Fairy2.png', 'Beauty and the Beast')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HanselAndGretel()));
                    },
                      child: _buildBookContainer('assets/fairy1.png', 'Hansel and Gretel')),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const  ThePrincessFrog() ));
                    },
                      child: _buildBookContainer('assets/fairy4.png', 'The Princess and the Frog')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Sleeping_Beauty()));
                    },
                      child: _buildBookContainer('assets/fairy5.png', 'Sleeping Beauty')),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Rapunzel()));
                    },
                      child: _buildBookContainer('assets/fairy6.png', 'Rapunzel')),
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
            color: Colors.pink.withOpacity(0.5),
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
