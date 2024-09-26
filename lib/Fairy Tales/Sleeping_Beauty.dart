import 'package:flutter/material.dart';

class Sleeping_Beauty extends StatefulWidget {
  const Sleeping_Beauty({super.key});

  @override
  State<Sleeping_Beauty> createState() => _Sleeping_BeautyState();
}

class _Sleeping_BeautyState extends State<Sleeping_Beauty> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Sleeping Beauty',
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
                  'assets/s1.png'),
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
              " in a kingdom adorned with flourishing gardens and majestic castles, there lived a king and queen who had longed for a child. Their wish was granted when a beautiful baby girl was born, and they named her Aurora. To celebrate her birth, the king and queen organized a grand feast and invited everyone in the kingdom, including the fairies."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/s2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "During the celebration, the fairies bestowed gifts upon the newborn princess. Each fairy granted blessings of beauty, grace, wit, and kindness. However, an evil fairy, who had not been invited, arrived in a whirl of darkness and cast a sinister curse upon Aurora. The malevolent fairy proclaimed that on her sixteenth birthday, Aurora would prick her finger on a spindle and fall into an eternal slumber."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/s3.png',),
              const SizedBox(height: 15),
              _buildText(
              "In a desperate attempt to protect their daughter, the king and queen ordered all the spindles in the kingdom to be destroyed. Determined to keep Aurora safe, they sent her away with the fairies to live in a secluded cottage deep within the woods."),
              const SizedBox(height: 15),
              _buildIllustration('assets/s4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Years passed, and Aurora grew into a beautiful and kind-hearted young woman, unaware of the impending curse. On the fateful day of her sixteenth birthday, while exploring the cottage, she stumbled upon an old spinning wheel hidden away in a forgotten chamber. Fascinated by the spindle, Aurora pricked her finger, fulfilling the curse."),
              const SizedBox(height: 15),
              _buildIllustration('assets/s5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "A deep slumber descended upon the kingdom, enveloping Aurora and everyone within the castle in an enchanted sleep. The fairies, devastated by the turn of events, placed a protective charm upon the castle, shrouding it in vines and thorns, hiding it from the outside world."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/s6.png',),
              const SizedBox(height: 15),
              _buildText(
              "Decades passed, and the kingdom lay forgotten, lost in time and legend. One day, a brave prince learned of the hidden castle and the beautiful princess trapped inside. Driven by a deep longing to awaken the sleeping beauty and break the curse, he embarked on a perilous journey.Overcoming treacherous obstacles and battling through the thorny maze, the prince finally reached the castle. With determination and unwavering courage, he fought his way to the chamber where Aurora lay in peaceful slumber."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/s7.png',),
              const  SizedBox(height: 15),
              _buildText('Moved by true loves kiss, the prince leaned forward and gently kissed Auroras lips. As the first light of dawn touched the horizon, the curse began to lift. Aurora stirred from her deep sleep, her eyes fluttering open, and the entire kingdom awoke from its enchanted slumber.The king and queen, the fairies, and the people of the kingdom rejoiced as joy and laughter filled the air. The prince and Aurora embraced, their love breaking the curse that had held the kingdom captive for so long.'),
              const SizedBox(height: 15),
              _buildIllustration('assets/s8.png',),
              const SizedBox(height: 15),
              _buildText('Peace and happiness were restored to the kingdom, and Aurora, now awakened, embraced her destiny as the beloved ruler alongside her true love, the prince. Their story became a timeless legend, teaching the world about the power of love, courage, and the resilience of the human spirit against the darkest of curses. And so, they lived happily ever after, their love shining as a beacon of hope and inspiration for generations to come.'),
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

