import 'package:flutter/material.dart';

class PercyJacksonAndTheOlympians extends StatefulWidget {
  const PercyJacksonAndTheOlympians({Key? key}) : super(key: key);

  @override
  State<PercyJacksonAndTheOlympians> createState() => _PercyJacksonAndTheOlympiansState();
}

class _PercyJacksonAndTheOlympiansState extends State<PercyJacksonAndTheOlympians> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Percy Jackson & The Olympians',
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
                  'assets/j1.png'),
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
              const  SizedBox(height: 15),
              _buildText(
              "In the bustling city of New York, there existed a world hidden from mortal eyes—a world of ancient gods, mythological creatures, and heroes. At the heart of this world was a young demigod named Percy Jackson."),
              const SizedBox(height: 15),
              _buildIllustration('assets/j2.png',),
            const  SizedBox(height: 15),
              _buildText(
              "Percy, a seemingly ordinary teenager, discovered his extraordinary lineage as a son of Poseidon, the Greek god of the sea. His life changed when he was thrust into a world of gods and monsters, discovering Camp Half-Blood, a refuge for demigods like himself."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/j3.png',),
              const SizedBox(height: 15),
              _buildText(
              "Unbeknownst to Percy, he was fated to play a crucial role in preventing a catastrophic war among the Olympian gods. He embarked on a series of quests alongside his friends, Annabeth Chase and Grover Underwood, encountering mythical beasts, uncovering ancient prophecies, and forging alliances with both gods and fellow demigods.As Percy delved deeper into his newfound destiny, he encountered Zeus, who accused him of stealing his powerful lightning bolt, a theft that could lead to catastrophic consequences. In an effort to clear his name and prevent war among the gods, Percy set out on a perilous journey across the United States."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/j4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Throughout his quests, Percy encountered various challenges, facing off against fierce adversaries and ancient foes. He discovered the intricacies of his powers as a son of Poseidon, manipulating water and communicating with sea creatures.With each trial and tribulation, Percy grew in strength, wisdom, and bravery. He confronted his fears, forged unbreakable bonds with his friends, and learned the importance of loyalty and sacrifice."),
              const SizedBox(height: 15),
              _buildIllustration('assets/j5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "In a climactic battle atop Olympus, Percy uncovered the true culprit behind the theft of Zeus's lightning bolt and prevented a catastrophic war among the gods. His courage and determination earned him the respect of the Olympians and the admiration of his peers at Camp Half-Blood.As peace was restored in the world of gods and demigods, Percy returned to Camp Half-Blood, where he continued to train and hone his abilities. His adventures were chronicled in tales that echoed through the annals of Greek mythology, inspiring future generations of demigods."),
              const SizedBox(height: 15),
              _buildIllustration('assets/j6.png',),
              const  SizedBox(height: 15),
              _buildText(
             "Percy Jackson became a legendary hero—a symbol of courage, resilience, and the unwavering spirit of a demigod who faced incredible challenges to protect the world he called home. His story stood as a testament to the power of friendship, bravery, and the enduring legacy of heroes in the tapestry of ancient myths and modern tales." ),
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
      style:const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
