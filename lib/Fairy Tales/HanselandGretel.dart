import 'package:flutter/material.dart';

class HanselAndGretel extends StatefulWidget {
  const HanselAndGretel({Key? key}) : super(key: key);

  @override
  State<HanselAndGretel> createState() => _HanselAndGretelState();
}

class _HanselAndGretelState extends State<HanselAndGretel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:  const Center(
            child:  Text(
              'Hansel and Gretel',
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
                  'assets/h1.png'),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              _buildText(
              "In a quaint village surrounded by dense forests, lived a family struggling to make ends meet. Hansel and Gretel, two siblings full of curiosity and kindness, dwelled in a small cottage with their loving but impoverished parents."),
              const SizedBox(height: 15),
              _buildIllustration('assets/h2.png',),
              const SizedBox(height: 15),
              _buildText(
              "Times grew tougher, and food became scarce in the village. One night, Hansel overheard his parents discussing their worries about not having enough to feed the family. Feeling the weight of their distress, Hansel devised a plan with his sister, Gretel, to help ease their parents' burden.The next morning, Hansel and Gretel ventured into the woods to collect berries and firewood, hoping to gather enough to sell in the village. But the dense forest led them astray, and despite their efforts, they couldn't find their way back home."),
              const SizedBox(height: 15),
              _buildIllustration('assets/h3.png',),
              const SizedBox(height: 15),
              _buildText(
              "As the sun began to set, the siblings stumbled upon a peculiar sight—a gingerbread house adorned with candy, sweets, and frosting. Starving and tired, they approached the house and cautiously nibbled on its sugary walls.To their surprise, the door creaked open, and an old woman with a warm smile welcomed them inside. She introduced herself as a kind-hearted witch who offered them food and shelter."),
              const SizedBox(height: 15),
              _buildIllustration('assets/h4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "However, the old woman's kindness was merely a facade. She was a wicked witch who lured children into her gingerbread house, intending to fatten them up and cook them in her oven.Hansel and Gretel soon realized the witch's true intentions and devised a clever plan. While the witch prepared her oven, Hansel pretended to be slow and asked the witch how to test if the oven was hot enough. With quick thinking, Gretel pushed the witch into the oven and slammed the door shut, freeing themselves from her grasp."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/h5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "With the witch defeated, Hansel and Gretel discovered a chest filled with treasures hidden in the witch's house. They took some of the treasures and found their way back home, following a trail of pebbles Hansel had dropped earlier.Returning to their cottage, Hansel and Gretel reunited with their worried parents, sharing their adventures and the treasure they had found. With the newfound wealth, they were able to live comfortably and help the less fortunate in their village."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/h6.png',),
              const SizedBox(height: 15),
              _buildText(
              "The siblings' bravery and quick thinking saved them from the witch's clutches, and their story of courage and survival became a legend in the village. Hansel and Gretel taught everyone the importance of sticking together, using wit in challenging situations, and never losing hope even in the darkest of times. Their bond as siblings grew stronger, and they lived happily ever after, cherishing each other and the lessons they learned along their extraordinary journey."),
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
