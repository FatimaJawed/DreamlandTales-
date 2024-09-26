import 'package:flutter/material.dart';

class TheEmperorsNewClothesScreen extends StatelessWidget {
  const TheEmperorsNewClothesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:const Center(
            child:  Text(
              'The Emperors New Clothes',
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
                  'assets/c1.png'),
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
                  "In a splendid kingdom nestled between rolling hills and shimmering lakes, there lived an Emperor who was known for his love of extravagant clothing. He spent his days adorned in the finest fabrics, each outfit more elaborate and grandiose than the last."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/c2.png',),
              const SizedBox(height: 15),
              _buildText(
                  'One day, two cunning weavers arrived in the kingdom, claiming they could weave the most extraordinary cloth, so magnificent that it was invisible to anyone who was unfit for their position or just plain stupid.The Emperor, intrigued by the promise of such remarkable clothing, summoned the weavers to the palace. Eager to display his wealth and discernment, he commissioned them to create a suit made from this extraordinary fabric.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/c3.png',),
              const SizedBox(height: 15),
              _buildText(
                  'The weavers, with deft fingers and clever tongues, pretended to weave the fabric day and night, making a spectacle of their work to the Emperors courtiers. They described the vibrant colors and intricate patterns of the imaginary cloth, all the while weaving nothing at all.The Emperor, afraid to be deemed unfit or foolish, sent his most trusted ministers to inspect the progress of the magical fabric. But when they saw the empty looms and heard the weavers enchanting tales, they, too, feigned admiration for fear of being labeled as incompetent.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/c4.png',),
              const  SizedBox(height: 15),
              _buildText("As the days passed, word of the extraordinary cloth spread throughout the kingdom, and everyone pretended to see the non-existent fabric, fearing to admit that they couldn't see it. The weavers continued their charade, praising the Emperor's choice and the beauty of the invisible cloth.Finally, the day of the grand procession arrived. The weavers presented the Emperor with his new clothes, which, to everyone's surprise, appeared to be nothing more than thin air. The Emperor, not wanting to appear unfit or foolish, pretended to admire the invisible garments, parading through the streets with great pomp and circumstance."),
              const SizedBox(height: 15),
              _buildIllustration('assets/c5.png',),
              const  SizedBox(height: 15),
              _buildText(
              'The people, afraid to be seen as foolish, marveled at the Emperors new clothes, whispering compliments and praises for the stunning fabric they couldn"t see. It wasn"t until a young child, innocent and unburdened by societal expectations, pointed and exclaimed, "But the Emperor is naked!"The truth echoed through the crowd, and suddenly, people started to murmur, realizing they had been deceived by their own fears. Slowly, laughter bubbled up, and the entire kingdom erupted into laughter, acknowledging the absurdity of the situation.'),
              const  SizedBox(height: 15),
              _buildIllustration('assets/c6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The Emperor, feeling exposed and foolish, realized the folly of his vanity and the consequences of his own pride. He humbly continued the procession, now understanding the importance of honesty and true wisdom.From that day forward, the kingdom learned to value sincerity and humility above all else. The story of the Emperor's new clothes became a timeless lesson, reminding everyone that honesty and truthfulness are the finest garments one can wear."),
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

