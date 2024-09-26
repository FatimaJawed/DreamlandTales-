import 'package:flutter/material.dart';
import 'CharlottesWeb.dart';
import 'The Little Prince.dart';
import 'The_Giving_Tree.dart';
import 'The_Very_Hungry_Caterpillar.dart';
import 'Where the Wild Things Are.dart';
import 'Winnie-the-Pooh.dart';

class Beloved_Childrens extends StatefulWidget {
  const Beloved_Childrens({super.key});

  @override
  State<Beloved_Childrens> createState() => _Beloved_ChildrensState();
}

class  _Beloved_ChildrensState extends State<Beloved_Childrens> {
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
                    image: AssetImage('assets/Beloved Childrens banner.png'),
                    fit: BoxFit.cover,
                  ),
                  color: const Color(0xFF231633),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Fantasy Tales',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WinniethePooh()));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens4.png', "Winnie-the-Pooh")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const TheGivingTree()));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens5.png', 'The Giving Tree')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CharlottesWeb()));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens2.png', "Charlotte's Web")),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const  TheVeryHungryCaterpillar() ));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens3.png', 'The Very Hungry Caterpillar')),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TheLittlePrince()));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens6.png', 'The Little Prince ')),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WhereTheWild()));
                      },
                      child: _buildBookContainer('assets/Beloved Childrens1.png', 'Where the Wild Things Are ')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
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
            color: Colors.purple.withOpacity(0.9),
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
