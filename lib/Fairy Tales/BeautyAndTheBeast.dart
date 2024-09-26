import 'package:flutter/material.dart';

class BeautyAndTheBeast extends StatelessWidget {
  const BeautyAndTheBeast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Beauty and the Beast',
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
                  'assets/beatuyandthebeast1.png'),
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
              const SizedBox(height: 15),
              _buildText(
                  "In a quaint village nestled between rolling hills and lush forests, there lived a kind and intelligent girl named Belle. Belle was known for her love of books and her caring nature towards everyone she met. In the same village, there was a magnificent castle that stood at the edge of the woods. The castle had once been splendid, but a powerful enchantment had fallen upon it, turning its prince into a fearsome beast and casting a spell on all who lived there."),
              const SizedBox(height: 15),
              _buildIllustration('assets/beauty99.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "Legend had it that the curse would only be broken if the Beast learned to love and was loved in return before the last petal fell from an enchanted rose. One day, Belle's father, Maurice, a skilled inventor, got lost in the woods and stumbled upon the mysterious castle. As he wandered through the deserted halls, he encountered the fearsome Beast. The Beast, although fierce-looking, had a kind heart and allowed Maurice to stay in the castle."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/beauty aand the beast.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "When Belle learned of her father's disappearance, she embarked on a brave journey to find him. Eventually, she found the castle and offered herself in exchange for her father's freedom. As days passed, Belle discovered the softer side of the Beast. She saw beyond his intimidating appearance and found a gentle soul yearning for kindness and understanding. They spent time together, sharing stories and enjoying quiet moments in the castle's gardens."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/b5.png',),
              const SizedBox(height: 15),
              _buildText("Despite their differences, a beautiful friendship blossomed between Belle and the Beast. With each passing day, Belle's kindness and compassion melted away the walls around the Beast's heart.However, as the enchanted rose's petals began to fall, panic spread in the castle. The Beast grew anxious, knowing that time was running out. Belle realized that she had developed feelings for the Beast, but she was unsure if it was enough to break the curse."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/b6.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "On the final day, as the last petal fell, Belle confessed her love for the Beast. In that moment, the castle was filled with a magical light, breaking the curse. The Beast transformed into the prince he once was, and the castle was restored to its former glory.Belle and the prince danced joyously in the grand ballroom, surrounded by their friends who were now freed from the curse. Their love had broken the spell and brought happiness back to the castle and the entire village."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/b7.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "From then on, Belle and the prince ruled the kingdom together, teaching everyone the true meaning of love, kindness, and looking beyond appearances. And they lived happily ever after, a testament to the power of love that knows no boundaries."),
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

