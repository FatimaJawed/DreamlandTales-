import 'package:flutter/material.dart';

class ThePrincessFrog extends StatefulWidget {
  const ThePrincessFrog({Key? key}) : super(key: key);

  @override
  State<ThePrincessFrog> createState() => _ThePrincessFrogState();
}

class _ThePrincessFrogState extends State<ThePrincessFrog> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Princess and The Frog',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding: const  EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/t1.png'),
              const SizedBox(height: 15),
              const Center(
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
              "In a kingdom adorned with lush gardens and shimmering lakes, there lived a princess named Isabella. She was known for her kindness, intelligence, and love for adventure. Isabella spent her days exploring the kingdom's wonders, seeking new experiences beyond the castle walls."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/t2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "One serene evening, while wandering through the royal gardens, Isabella stumbled upon a mystical pond surrounded by twinkling fireflies. Mesmerized by the serene beauty, she spotted a radiant frog perched upon a lily pad. The frog, with glittering green eyes, spoke in a soft voice, revealing itself as a prince cursed by an evil enchantment."),
              const   SizedBox(height: 15),
              _buildIllustration('assets/t3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The prince shared his tale—a malicious sorceress had cast a spell, turning him into a frog until someone pure of heart agreed to be his companion. He pleaded with Isabella to break the curse by sharing a meal with him.Empathetic and intrigued, Isabella agreed, and as they dined together, a bond formed between them. The prince's froggy appearance didn't deter Isabella, for she saw the kindness and wisdom within him."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/t5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "To break the curse, the prince needed a magical kiss from someone who saw beyond his amphibian form. However, Isabella's affection for the prince grew gradually through their conversations and shared moments, rather than a simple kiss. As days turned into weeks, their friendship blossomed into a deep and genuine connection."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/t4.png',),
              const  SizedBox(height: 15),
              const  SizedBox(height: 15),
              _buildText(
              "Together, Isabella and the prince explored the kingdom, embarking on adventures and sharing laughter. Isabella discovered the joy of friendship and found herself captivated by the prince's noble spirit.As their bond strengthened, a beautiful transformation began to unfold. One enchanting night, under the shimmering stars, the prince's froggy form dissolved, revealing his true identity—a handsome prince."),
              const SizedBox(height: 15),
              _buildIllustration('assets/t6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The sorceress's curse was finally broken by the power of genuine companionship and understanding. Isabella and the prince embraced, celebrating their newfound freedom and the love that had bloomed between them.Their joyous union brought happiness to the kingdom, and Isabella became known not only for her grace and intelligence but also for her kind heart that saw beyond appearances."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/t7.png',),
              const SizedBox(height: 15),
              _buildText('Isabella and the prince ruled the kingdom together, their love inspiring tales of compassion and the belief that true beauty lies within. Their story became a cherished legend, teaching everyone the invaluable lesson of looking beyond outward appearances and embracing the beauty found in genuine connections and kind hearts. And so, they lived happily ever after in a kingdom filled with love and understanding.'),

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
