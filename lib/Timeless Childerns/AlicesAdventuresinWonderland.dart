import 'package:flutter/material.dart';

class AlicesAdventuresinWonderland extends StatefulWidget {
  const AlicesAdventuresinWonderland({Key? key}) : super(key: key);

  @override
  State<AlicesAdventuresinWonderland> createState() => _AlicesAdventuresinWonderlandState();
}

class _AlicesAdventuresinWonderlandState extends State<AlicesAdventuresinWonderland> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:  const Center(
            child:  Text(
              'Alices Adventures in Wonderland',
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
                  'assets/in1.png'),
              const  SizedBox(height: 15),
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
              "In a serene garden on a warm, sunny day, Alice, a curious young girl, found herself idly daydreaming by a riverbank. As she dozed off, she spotted a peculiar rabbit with a waistcoat and a pocket watch, muttering about being late. Driven by her boundless curiosity, Alice chased after the rabbit, tumbling headlong into a fantastical adventure."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/in2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Falling through a rabbit hole, Alice plummeted into a whimsical world of wonders—the extraordinary Wonderland. Everything in this peculiar realm defied logic and reason, filled with talking creatures, nonsensical happenings, and a touch of enchantment.Amidst this kaleidoscope of oddities, Alice encountered a series of eccentric characters. She conversed with the perpetually grinning Cheshire Cat, had tea with the Mad Hatter and the March Hare, played croquet with the tempestuous Queen of Hearts, and conversed with the enigmatic Caterpillar sitting atop a mushroom."),
              const SizedBox(height: 15),
              _buildIllustration('assets/in3.png',),
              const SizedBox(height: 15),
              _buildText(
              "Each encounter brought Alice closer to understanding the surreal yet captivating nature of Wonderland. She faced perplexing riddles, mind-bending challenges, and absurd situations that tested her wit and adaptability.Throughout her journey, Alice yearned to find her way back home. Yet, with each twist and turn in Wonderland, she discovered new facets of herself, embracing the unexpected and learning to navigate the unfamiliar with courage and resilience."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/in4.png',),
              const SizedBox(height: 15),
              _buildText(
              "As she navigated this topsy-turvy realm, Alice grappled with the shifting rules of reality and the whims of Wonderland's inhabitants. She questioned the absurdity and unpredictability of this peculiar world, longing for the familiar comforts of her home.In a climactic encounter with the Queen of Hearts, Alice found herself at the center of a surreal trial, accused of stealing tarts. Yet, as the trial spiraled into chaos, Alice realized the absurdity of it all, refusing to play along with the Queen's whims."),
              const SizedBox(height: 15),
              _buildIllustration('assets/in5.png',),
              const SizedBox(height: 15),
              _buildText(
              "With a newfound sense of self-assurance and defiance against the irrationality surrounding her, Alice declared her independence from Wonderland's nonsensical rules. This bold act of self-assertion shattered the illusion, and Alice awakened by the riverside, realizing that her extraordinary journey had been a dream.As she awoke, Alice carried with her the lessons learned in Wonderland—a reminder to embrace curiosity, courage, and the resilience to navigate life's unexpected twists and turns."),
              const SizedBox(height: 15),
              _buildIllustration('assets/in6.png',),
              const SizedBox(height: 15),
              _buildText(
              "Though it was just a dream, Alice's adventures in Wonderland remained etched in her memory, a testament to the power of imagination, curiosity, and the limitless possibilities found within the depths of one's own mind."),
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
