import 'package:flutter/material.dart';

class TheLittlePrince extends StatefulWidget {
  const TheLittlePrince({Key? key}) : super(key: key);

  @override
  State<TheLittlePrince> createState() => _TheLittlePrinceState();
}

class _TheLittlePrinceState extends State<TheLittlePrince> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Little Prince',
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
                  'assets/prince1.png'),
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
              "In a universe filled with wonders and mysteries, there was a tiny planet, scarcely larger than a house. On this little planet lived a prince—The Little Prince. He had golden hair and a heart filled with curiosity, wisdom, and an insatiable thirst for understanding the world around him."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/prince2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "On his small planet, the Little Prince cared for a beloved rose, which he adored more than anything else in the universe. He nurtured the rose, tending to her needs and listening to her stories, feeling deeply connected to her."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/prince6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Yet, despite the love he shared with his rose, the Little Prince yearned for adventure and discovery beyond the confines of his tiny world. He embarked on a cosmic journey, visiting different planets and meeting a peculiar cast of characters During his travels, he encountered a king who claimed to rule the stars but was all alone on his planet, a conceited man who craved admiration but lacked true connection, a businessman consumed by counting stars that he did not truly own, and a lamplighter who tirelessly lit and extinguished his lamp on a planet that spun too quickly."),
              const SizedBox(height: 15),
              _buildIllustration('assets/prince3.png',),
              const SizedBox(height: 15),
              _buildText(
              "Amidst his encounters, the Little Prince crossed paths with a fox. The fox imparted a valuable lesson on the essence of friendship and love, teaching the prince that what is essential is invisible to the eye. He learned that the rose he left behind was unique and precious because of the time and care he had invested in her.As the Little Prince continued his journey, he arrived on Earth, where he met an aviator stranded in the desert. The aviator, while repairing his plane, befriended the prince and listened to his tales of the cosmos. Through their conversations, the aviator discovered the profound wisdom and innocence that the Little Prince held within him."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/prince4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "In a touching conclusion, the Little Prince realized the true importance of love, friendship, and the simple joys of life. He understood that his love for his rose made her special among all the other roses in the universe. With a heavy heart, he decided to return to his planet to be with his beloved rose.The Little Prince bid farewell to the aviator, promising to always be present in the stars, where they could continue to share their memories and stories across the cosmos."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/prince5.png',),
              const SizedBox(height: 15),
              _buildText(
              "Though the Little Prince's physical presence departed, his spirit and teachings lingered, leaving behind a legacy of wisdom and insight. His story became a timeless reminder that the most significant things in life are often the ones that are invisible to the eye—love, friendship, and the bonds that transcend time and space. And so, the Little Prince continued to inspire hearts and minds, forever a symbol of the purity of innocence and the wisdom found in embracing what truly matters in life."),
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
