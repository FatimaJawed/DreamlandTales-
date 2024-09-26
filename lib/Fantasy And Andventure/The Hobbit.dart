import 'package:flutter/material.dart';

class TheHobbit extends StatefulWidget {
  const TheHobbit({Key? key}) : super(key: key);

  @override
  State<TheHobbit> createState() => _TheHobbitState();
}

class _TheHobbitState extends State<TheHobbit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Hobbit',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/hobbit1.png'),
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
              "In a peaceful and picturesque land known as the Shire, lived a hobbit named Bilbo Baggins. Bilbo was content with his quiet life, enjoying simple pleasures like gardening and a cozy home. Little did he know that an extraordinary adventure was about to unfold."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/hobbit2.png',),
              const SizedBox(height: 15),
              _buildText(
              "One fine morning, Gandalf the wizard arrived at Bilbo's doorstep, inviting him on a grand quest alongside a company of dwarves led by Thorin Oakenshield. They sought to reclaim their homeland, the Lonely Mountain, from the fearsome dragon Smaug, who had driven the dwarves into exile and claimed their treasure.Initially hesitant and yearning for the comfort of his home, Bilbo found himself swept away on this unexpected journey. Along the way, he encountered trolls, goblins, elves, and even a creature named Gollum, who possessed a mysterious and powerful ring."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/hobbit3.png',),
              const SizedBox(height: 15),
              _buildText(
              "As the company navigated through treacherous forests and faced numerous challenges, Bilbo discovered his inner courage and resourcefulness. Despite his small stature, he proved himself clever and invaluable to the group.Their quest led them to the Lonely Mountain, where Smaug lay guarding the vast treasure. Through wit and bravery, Bilbo managed to outsmart the dragon, discovering a weakness in Smaug's armor. However, as Smaug flew to wreak havoc upon the nearby town, the dwarves and Bilbo had to face the aftermath of their actions."),
              const SizedBox(height: 15),
              _buildIllustration('assets/hobbit4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Meanwhile, a fierce battle brewed between various factions, each seeking control of the treasure and the Lonely Mountain. The forces of good, led by the dwarves, faced off against goblins, wargs, and other adversaries.In the midst of chaos and conflict, Bilbo stood alongside his newfound friends, fighting for what was right. He used his quick thinking and bravery to aid the dwarves in their struggle."),
              const SizedBox(height: 15),
              _buildIllustration('assets/hobbit5.png',),
              const SizedBox(height: 15),
              _buildText(
              "Ultimately, the battle was won, but not without sacrifices. Thorin Oakenshield, the leader of the dwarves, fell in battle, leaving a legacy of bravery and honor. With the defeat of the goblins and the restoration of peace, Bilbo's adventure came to an end.Returning home to the Shire, Bilbo found that he had been changed by his experiences. Though he cherished the comfort of his hobbit hole, he had gained a newfound appreciation for the world beyond his doorstep and the value of courage, friendship, and self-discovery."),
              const SizedBox(height: 15),
              _buildIllustration('assets/hobbit6.png',),
              const SizedBox(height: 15),
              _buildText(
              "Ultimately, the battle was won, but not without sacrifices. Thorin Oakenshield, the leader of the dwarves, fell in battle, leaving a legacy of bravery and honor. With the defeat of the goblins and the restoration of peace, Bilbo's adventure came to an end.Returning home to the Shire, Bilbo found that he had been changed by his experiences. Though he cherished the comfort of his hobbit hole, he had gained a newfound appreciation for the world beyond his doorstep and the value of courage, friendship, and self-discovery."),
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
