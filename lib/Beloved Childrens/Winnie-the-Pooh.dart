import 'package:flutter/material.dart';

class WinniethePooh extends StatefulWidget {
  const WinniethePooh({Key? key}) : super(key: key);

  @override
   _WinniethePoohState createState() => _WinniethePoohState();
}

class _WinniethePoohState extends State<WinniethePooh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const  Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Winnie the Pooh',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/pooh1.png'),
              const SizedBox(height: 15),
             const  Center(
                child: Text(
                  'Once upon a time...',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              _buildText(
              "In the enchanting Hundred Acre Wood, where the sun danced through the trees and the air was filled with the sweet scent of honey, lived a lovable bear named Winnie the Pooh."),
              const SizedBox(height: 15),
              _buildIllustration('assets/pooh2.png',),
              const SizedBox(height: 15),
              _buildText(
              "Pooh was a bear of very little brain but a heart as vast as the woods he roamed. He lived a simple and content life, often accompanied by his loyal friends: Piglet, a timid and kind-hearted pig; Tigger, an exuberant and bouncy tiger; Eeyore, a melancholic yet endearing donkey; Rabbit, a practical and sometimes fussy rabbit; Kanga, a caring motherly kangaroo; and Roo, her energetic and curious joey."),
              const SizedBox(height: 15),
              _buildIllustration('assets/pooh3.png',),
              const SizedBox(height: 15),
              _buildText(
              "The Hundred Acre Wood was a place where adventures bloomed from the simplest of moments. Pooh and his friends embarked on delightful escapades, from searching for honey to organizing picnics and playing imaginative games.However, the most cherished moments were those spent at Pooh's thoughtful spot, where he pondered life's mysteries and savored the simple pleasures of friendship and contentment."),
              const SizedBox(height: 15),
              _buildIllustration('assets/pooh4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Pooh's insatiable love for honey often led to amusing mishaps and adventures. His fondness for the golden nectar sometimes landed him in comical situations, like getting stuck in Rabbit's front door after indulging in too much honey.But amidst the whimsy and playfulness, Pooh's wisdom shone through. He taught his friends valuable lessons about kindness, loyalty, and the importance of embracing one's unique qualities."),
              const SizedBox(height: 15),
              _buildIllustration('assets/pooh5.png',),
              const SizedBox(height: 15),
              _buildText(
              "Together, Pooh and his friends navigated through life's ups and downs, celebrating the joys of friendship and supporting each other through challenging times. They learned the power of empathy, resilience, and the magic of being true to oneself.The Hundred Acre Wood was a place where imagination flourished and laughter echoed through the trees. And as the sun set over the gentle hills, Pooh and his friends gathered at Pooh's thoughtful spot, savoring the sweetness of their bonds and the simple pleasures that filled their hearts."),
              const SizedBox(height: 15),
              _buildIllustration('assets/pooh6.png',),
             const  SizedBox(height: 15),
              _buildText(
              "Their adventures in the Hundred Acre Wood became cherished tales, teaching the world the enduring value of friendship, kindness, and the joy found in life's little moments. And so, the adventures of Winnie the Pooh and his beloved friends remained an everlasting source of warmth and comfort, a reminder of the simple joys that make life truly special."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIllustration(String imagePath, ) {
    return Column(
      children: [
        Container(
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            color: const Color(0xFF231633),
          ),
        ),
      ],
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
