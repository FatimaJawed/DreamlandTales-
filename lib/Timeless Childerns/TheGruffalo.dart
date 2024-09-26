import 'package:flutter/material.dart';

class TheGruffalo extends StatefulWidget {
  const TheGruffalo({Key? key}) : super(key: key);

  @override
  State<TheGruffalo> createState() => _TheGruffaloState();
}

class _TheGruffaloState extends State<TheGruffalo> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Gruffalo',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding:  const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/gu1.png'),
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
              "In the heart of a deep, enchanting forest, where tall trees stood sentinel and mysterious creatures roamed, lived a clever little mouse. This mouse was no ordinary rodent—small in size but brimming with wit and cunning."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/gu2.png',),
              const   SizedBox(height: 15),
              _buildText(
              "One fine day, as the mouse strolled through the woods, it encountered a series of hungry predators—a cunning fox, a sneaky snake, and an imposing owl. Each one eyed the mouse hungrily, envisioning it as their next meal.Yet, the quick-witted mouse outsmarted them all. With wit and charm, the mouse regaled the predators with tales of a fearsome creature—the Gruffalo. Describing the Gruffalo as a beast with terrible tusks, terrible claws, and a poisonous wart at the end of its nose, the mouse frightened the would-be predators away."),
              const  SizedBox(
                  height: 15),
              _buildIllustration('assets/gu3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As the mouse journeyed deeper into the forest, it chuckled at its own cleverness. Little did the mouse know, its stories of the Gruffalo would soon become a reality.Much to the mouse's surprise, it stumbled upon a creature that seemed to resemble the very description of the Gruffalo—a creature with terrible tusks, terrible claws, and a poisonous wart at the end of its nose."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/gu4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Startled but unfazed, the mouse put its quick wit into action. It confidently greeted the Gruffalo, claiming that it was the scariest creature in the forest. The Gruffalo, impressed by the mouse's bravado, was intrigued and decided to follow along as the mouse ventured through the woods.As they journeyed together, the mouse continued to weave a tale, convincing the Gruffalo that it was the most feared creature in the forest. Along the way, they encountered the same predators the mouse had outsmarted earlier—the fox, the snake, and the owl."),
              const SizedBox(height: 15),
              _buildIllustration('assets/gu5.png',),
              const SizedBox(height: 15),
              _buildText(
                  "On the final day, as the last petal fell, Belle confessed her love for the Beast. In that moment, the castle was filled with a magical light, breaking the curse. The Beast transformed into the prince he once was, and the castle was restored to its former glory.Belle and the prince danced joyously in the grand ballroom, surrounded by their friends who were now freed from the curse. Their love had broken the spell and brought happiness back to the castle and the entire village."),
              const SizedBox(height: 15),
              _buildIllustration('assets/gu6.png',),
              const SizedBox(height: 15),
              _buildText(
              "As they continued their journey, the mouse and the Gruffalo shared laughter and stories, forming an unlikely bond that transcended their differences.And so, in the heart of the enchanting forest, amidst the tall trees and mysterious creatures, the mouse and the Gruffalo embarked on many more adventures together, proving that courage, quick wit, and friendship could conquer even the most fearsome of challenges. Their tale of cunning and camaraderie echoed through the woods, inspiring creatures large and small to embrace their unique strengths and forge unexpected friendships."),
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

