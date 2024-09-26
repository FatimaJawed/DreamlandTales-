import 'package:flutter/material.dart';

class Rapunzel extends StatefulWidget {
  const Rapunzel({Key? key}) : super(key: key);

  @override
  State<Rapunzel> createState() => _RapunzelState();
}

class _RapunzelState extends State<Rapunzel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Rapunzel',
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
                  'assets/r1.png'),
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
              "In a faraway kingdom, nestled among rolling hills and lush forests, stood a magnificent tower, hidden from the world. This tower was home to a young girl named Rapunzel. Her life began with a mysterious enchantment, and from her birth, her destiny was intertwined with the tower."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/r2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Rapunzel's mother, while pregnant, fell gravely ill and was healed by the magical powers of a rare flower. This flower held immense healing properties, and its essence passed on to Rapunzel before she was born, blessing her with long, golden hair that possessed the flower's healing abilities."),
              const SizedBox(height: 15),
              _buildIllustration('assets/r3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As Rapunzel grew, she was raised by an enchantress in the tower, secluded from the outside world. The enchantress, claiming to be her mother, kept Rapunzel isolated, weaving a tale of the world's dangers beyond the tower's walls.The only connection Rapunzel had to the world was through her magical hair, which glowed whenever she sang a special song her mother had taught her. This song held the power to summon the enchantress up the tower."),
              const SizedBox(height: 15),
              _buildIllustration('assets/r4.png',),
              const  SizedBox(height: 15),
              _buildText(
              'Years passed, and Rapunzels curiosity about the world outside the tower grew stronger. She often spent her days reading books, learning about nature, and dreaming of exploring the world beyond her window.One day, a young prince named Alexander was passing through the forest. He heard the melodic sound of Rapunzels song echoing through the woods. Intrigued by the enchanting voice, he followed the melody until he discovered the hidden tower.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/r5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Upon seeing Rapunzel, the prince was captivated by her beauty and the magical glow of her hair. He approached the tower and called out to her. Rapunzel, surprised and overjoyed to see a visitor, hesitated at first but eventually let down her long, golden locks for the prince to climb.As they spent time together, Rapunzel and the prince formed a deep connection, sharing stories and dreams. They found solace in each other's company, and Rapunzel's heart swelled with the desire to explore the world beyond the tower's confines."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/r6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Their meetings continued in secret, until one day, the enchantress discovered the prince's visits. Enraged, she banished Rapunzel to a remote part of the kingdom and trapped the prince in a dungeon far away.Determined to rescue his beloved Rapunzel, the prince managed to escape and embarked on a perilous journey. He braved treacherous paths and overcame obstacles, driven by his love for Rapunzel."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/r7.png',),
              const SizedBox(height: 15),
              _buildText('Meanwhile, Rapunzel, with her unwavering spirit, found the strength to stand up to the enchantress. Using her magical hair and the knowledge she had gained from her time in the tower, she broke free from the enchantresss grasp and set out to find the prince.Their paths intertwined once again as Rapunzel and the prince reunited, their love stronger than ever. With Rapunzels healing powers and the princes courage, they confronted the enchantress together.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/r8.png',),
              const  SizedBox(height: 15),
              _buildText("In a powerful display of love and unity, Rapunzel and the prince broke the enchantress's hold over them. The tower's enchantment lifted, revealing the truth about Rapunzel's origin and her extraordinary powers."),
              const SizedBox(height: 15),
              _buildIllustration('assets/r9.png',),
              const SizedBox(height: 15),
              _buildText("Embracing their freedom, Rapunzel and the prince ventured into the world, hand in hand. They shared their story, spreading hope and inspiration wherever they went, teaching others about the strength of love, resilience, and the power of discovering one's true self. And as they explored the world together, their love continued to bloom, painting a beautiful tale that would be remembered for generations to come."),
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
