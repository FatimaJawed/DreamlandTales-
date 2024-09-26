import 'package:flutter/material.dart';

class GoodNightMoon extends StatefulWidget {
  const GoodNightMoon({Key? key}) : super(key: key);

  @override
  State<GoodNightMoon> createState() => _GoodNightMoonState();
}

class _GoodNightMoonState extends State<GoodNightMoon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Good Night Moon',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding:const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/good123.png'),
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
              const SizedBox(height: 15),
              _buildText(
              "In a cozy, snug room, nestled under a blanket of stars and moonlight, there stood a small, comfortable bed. And on that bed lay a little bunny, ready to embark on a whimsical journey of bedtime rituals."),
              const SizedBox(height: 15),
              _buildIllustration('assets/good2.png',),
              const SizedBox(height: 15),
              _buildText(
              "The little bunny gazed around the room, taking in the soothing ambiance illuminated by the soft glow of the moon. With wide eyes and a heart full of curiosity, the bunny embarked on his nightly routine."),
              const SizedBox(height: 15),
              _buildIllustration('assets/good3.png',),
              const SizedBox(height: 15),
              _buildText(
              '"Goodnight room, goodnight moon," whispered the bunny, casting a tender gaze around the room, bidding farewell to every object in sight. He said goodnight to the familiar paintings on the wall, the quiet clock ticking away the hours, and the cozy socks resting on the chair.With each soft utterance of "goodnight," the bunny felt a sense of calmness settling within. He moved on to the toys scattered around the room, bidding each one goodnight with a gentle nod and a sense of gratitude for the joy they brought throughout the day.'),
              const SizedBox(height: 15),
              _buildIllustration('assets/good4.png',),
              const SizedBox(height: 15),
              _buildText(
              '"Goodnight stars, goodnight air," the bunny murmured, acknowledging the vast expanse of the night sky and the gentle breeze that rustled the curtains. He expressed his appreciation for the world outside, feeling the serenity of the night seep into his being.As the bunny continued his bedtime ritual, he gradually felt his eyelids grow heavy. With each goodnight whispered, he felt a sense of peace enveloping him, ready to embrace the tranquility of sleep.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/good5.png',),
              const  SizedBox(height: 15),
              _buildText(
              'Finally, with a soft "goodnight noises everywhere," the little bunny nestled under the covers, feeling the warmth and comfort of the familiar room. The moonlight gently danced across the room, casting a gentle lullaby, as the bunny drifted off into a peaceful slumber.In the stillness of the night, the room remained a haven of comfort and serenity. And as the little bunny slept soundly, surrounded by the love and warmth of his familiar space, the night embraced him, promising sweet dreams until the morning light.'),
              const SizedBox(height: 15),
              _buildIllustration('assets/good6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The tale of the little bunny bidding goodnight to everything around him became a beloved bedtime story, reminding both children and grown-ups of the peaceful rituals and the sense of comfort found in acknowledging and appreciating the world around us before drifting into the land of dreams."),
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
