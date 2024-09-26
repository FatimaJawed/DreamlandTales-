import 'package:flutter/material.dart';

class WhereTheWild extends StatefulWidget {
  const WhereTheWild({Key? key}) : super(key: key);

  @override
  State<WhereTheWild> createState() => _WhereTheWildState();
}

class _WhereTheWildState extends State<WhereTheWild> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const  Center(
            child:  Text(
              'Where The Wild Things Are',
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
                  'assets/wild1.png'),
            const   SizedBox(height: 15),
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
              "In a cozy house at the edge of a forest, lived a young boy named Max. Max was a spirited and imaginative child, prone to wild adventures and flights of fancy. One evening, after a day of mischief, Max found himself in his room, feeling a whirlwind of emotions—a mix of anger, frustration, and a longing for adventure."),
              const SizedBox(height: 15),
              _buildIllustration('assets/wild2.png',),
              const SizedBox(height: 15),
              _buildText(
              "In a fit of imaginative exuberance, Max donned his wolf suit, the very one he wore when feeling most rambunctious, and declared himself the king of all wild things. As he stomped and roared around his room, his imagination whisked him away to a far-off land—a land where the wild things roamed.Max sailed across an ocean, finding himself on an island inhabited by enormous and peculiar creatures known as the Wild Things. These creatures, with their fearsome looks, were both strange and endearing, each with their own quirks and personalities."),
              const SizedBox(height: 15),
              _buildIllustration('assets/wild3.png',),
              const SizedBox(height: 15),
              _buildText(
              "Asserting his royal status, Max tamed the Wild Things with the magic of his imagination. He declared himself their king, promising to bring joy and adventure to their lives.Under Max's rule, the Wild Things engaged in joyful revelry, dancing, and frolicking in a wild rumpus. Yet, amidst the chaos and fun, Max began to feel a longing for home—the comfort of his room and the love he left behind."),
              const SizedBox(height: 15),
              _buildIllustration('assets/wild4.png',),
              const SizedBox(height: 15),
              _buildText(
              "In a moment of introspection, King Max realized that despite the wildness and freedom of the island, the place he truly belonged was home, among the ones who loved him.With a heavy heart, Max bid farewell to the Wild Things, promising to remember them always. He sailed back across the ocean, returning to his room, where a warm supper awaited him—a sign of love and comfort."),
              const SizedBox(height: 15),
              _buildIllustration('assets/wild5.png',),
              const SizedBox(height: 15),
              _buildText(
              "As he settled into bed, Max found solace in the knowledge that while wild adventures were thrilling, the truest happiness came from the love and security of home and the embrace of those who cared for him.In the quiet of his room, Max's imagination soared, bringing him comfort and joy as he drifted off to sleep, dreaming of both wild and comforting adventures."),
              const SizedBox(height: 15),
              _buildIllustration('assets/wild6.png',),
              const SizedBox(height: 15),
              _buildText(
              "The story of Max and the Wild Things became a cherished tale—a reminder that while wildness and imagination are exhilarating, the love and warmth of home and family are the most precious treasures of all. And so, Max's story continued to inspire children and adults alike, inviting them to embrace the wildness of imagination while cherishing the comfort and love found in the familiar embrace of home."),
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
