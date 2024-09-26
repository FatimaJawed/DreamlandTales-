import 'package:flutter/material.dart';

class Madeline extends StatefulWidget {
  const Madeline({Key? key}) : super(key: key);

  @override
  State<Madeline> createState() => _MadelineState();
}

class _MadelineState extends State<Madeline> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:  const Center(
            child:  Text(
              'Madeline',
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
                  'assets/ma1.png'),
              const  SizedBox(height: 15),
              const   Center(
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
              "In a picturesque house in Paris, lived twelve little girls in two straight lines. They resided under the care of Miss Clavel, a kind and attentive nun who looked after them with love and guidance. Among these twelve girls was the smallest and most spirited—Madeline."),
              const SizedBox(height: 15),
              _buildIllustration('assets/ma2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Madeline was a feisty and fearless girl with bright red hair and a mischievous sparkle in her eye. Despite her petite stature, she possessed an adventurous spirit that led her into thrilling escapades."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/ma3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "One day, while playing in the garden, Madeline noticed something peculiar—a tiny crack in the old vine-covered wall. Her curiosity piqued, she peered through the gap and saw a wondrous sight—a magical world waiting to be explored.Without a moment's hesitation, Madeline squeezed through the crack and found herself in an enchanting garden beyond the wall. Trees with branches stretching like arms, flowers in every hue imaginable, and animals frolicking in the meadows greeted her."),
              const SizedBox(height: 15),
              _buildIllustration('assets/ma4.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "Madeline explored this new world with boundless enthusiasm, making friends with talking birds, playful squirrels, and even a friendly fox. She danced with butterflies and sang songs with the birds, reveling in the beauty and magic of nature.As the day drew to a close, Madeline realized it was time to return to her home. She bid farewell to her newfound friends and squeezed back through the crack in the wall, arriving just in time for supper."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/ma5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Miss Clavel, noticing the twinkle in Madeline's eyes, inquired about her day. With a mischievous grin, Madeline recounted her extraordinary adventure, describing the wonders she had seen and the friends she had made.Miss Clavel smiled warmly, delighted by Madeline's tales of exploration and imagination. She tucked Madeline into bed, where she dreamed of the magical garden beyond the wall."),
              const SizedBox(height: 15),
              _buildIllustration('assets/ma6.png',),
              const  SizedBox(height: 15),
              _buildText(
                "The next day, Madeline couldn't wait to return to the secret garden. With the other girls in tow, she led them through the crack in the wall, sharing the wonders she had discovered.Together, the girls danced with the birds, sang with the animals, and reveled in the joy of the enchanted garden. They returned home before sunset, giggling and full of stories to share."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/ma7.png',),
              const SizedBox(height: 15),
              _buildText("From that day on, the girls often visited the magical garden, fostering their sense of wonder and adventure. And in those moments, as they played and explored together, they learned the beauty of imagination, friendship, and the limitless wonders found in the world beyond their straight little lines."),
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
      style:  const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
