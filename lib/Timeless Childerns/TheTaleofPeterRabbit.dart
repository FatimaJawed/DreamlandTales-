import 'package:flutter/material.dart';

class TheTaleofPeterRabbit extends StatefulWidget {
  const TheTaleofPeterRabbit({Key? key}) : super(key: key);

  @override
  State<TheTaleofPeterRabbit> createState() => _TheTaleofPeterRabbitState();
}

class _TheTaleofPeterRabbitState extends State<TheTaleofPeterRabbit> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Tale of Peter Rabbit',
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
                  'assets/tale1.png'),
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
              "In a charming countryside nestled amidst rolling hills and blossoming gardens, there lived a mischievous young rabbit named Peter. He was one of Mrs. Rabbit's many children, but unlike his well-behaved siblings, Peter was a curious and adventurous little fellow."),
              const SizedBox(height: 15),
              _buildIllustration('assets/tale2.png',),
              const SizedBox(height: 15),
              _buildText(
              "One sunny morning, Mrs. Rabbit warned her children to stay away from Mr. McGregor's garden, for it was a dangerous place where many rabbits had disappeared. But Peter's curiosity got the better of him, and he couldn't resist the allure of the forbidden garden filled with delicious vegetables."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tale3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Ignoring his mother's caution, Peter sneaked into Mr. McGregor's garden, reveling in the abundance of ripe lettuces, radishes, and succulent cabbages. His little nose twitched with delight as he nibbled on the forbidden treasures.Suddenly, Peter heard the sound of footsteps—Mr. McGregor was coming! Frantically, Peter scurried around the garden, trying to find his way back to safety. His heart raced with fear as he dodged rakes and ducked under watering cans."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tale4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Amidst the chaos, Peter lost his way and found himself trapped inside a watering can. Unable to escape, he lay trembling with fear as Mr. McGregor approached, his boots thudding closer and closer.Thankfully, Peter's quick thinking and resourcefulness saved the day. He wiggled and wriggled until he popped out of the watering can, dashing past Mr. McGregor and out of the garden as fast as his little legs could carry him."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tale5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Breathless but safe, Peter made his way back home, where his mother scolded him for disobeying her warnings. He promised to never go into Mr. McGregor's garden again, having learned his lesson.From that day on, Peter became a little wiser and a touch more cautious. He realized that sometimes, curiosity could lead to trouble, but he also knew that his adventurous spirit would always guide him through even the most harrowing of escapades."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tale6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "And so, the tale of Peter Rabbit became a beloved story, teaching children about the perils of disobedience and the importance of heeding warnings, all wrapped in the charming adventures of a mischievous yet lovable little rabbit."),
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

