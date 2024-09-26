import 'package:flutter/material.dart';

class TheVeryHungryCaterpillar extends StatefulWidget {
  const TheVeryHungryCaterpillar({Key? key}) : super(key: key);

  @override
  State<TheVeryHungryCaterpillar> createState() => _TheVeryHungryCaterpillarState();
}

class _TheVeryHungryCaterpillarState extends State<TheVeryHungryCaterpillar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const  Center(
            child:  Text(
              'The Very Hungry Caterpillar',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding: const  EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/very1.png'),
              const  SizedBox(height: 15),
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
              "nestled amidst a vibrant garden, there lived a tiny, curious caterpillar. Unlike any other caterpillar, this little one was very hungry indeed."),
              const SizedBox(height: 15),
              _buildIllustration('assets/very2.png',),
              const  SizedBox(height: 15),
              _buildText(
                "From the moment he hatched from his tiny egg, the insatiable caterpillar set out on a quest to satisfy his enormous appetite. He began his journey, munching through one delicious fruit after another, devouring apples, pears, strawberries, and oranges with great enthusiasm.As the days passed, the caterpillar's hunger only grew. He munched through piles of sweet treats, including cakes, ice creams, and lollipops. Despite his voracious appetite, the caterpillar still felt an emptiness within him, a yearning for something more."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/very3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "One day, feeling quite full but still not satisfied, the caterpillar stopped and pondered. He realized that his constant munching hadn't brought him true happiness. He longed for something meaningful, something beyond his cravings.Deciding to embark on a different kind of journey, the caterpillar withdrew into a cozy cocoon. Inside this cocoon, he underwent a miraculous transformation, hidden from the world's gaze."),
              const SizedBox(height: 15),
              _buildIllustration('assets/very4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Weeks went by, and the caterpillar emerged from his cocoon, transformed into a magnificent butterfly, adorned with vibrant wings of dazzling colors. He fluttered through the garden, reveling in his newfound freedom and beauty.As the butterfly soared through the air, he discovered the true joy of life—spreading his wings, exploring the world, and savoring the sweet nectar of flowers. He realized that true happiness came not from endless consumption but from the simple pleasures of discovery, growth, and the freedom to explore the wonders of the world around him."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/very5.png',),
              const SizedBox(height: 15),
              _buildText(
              "The butterfly's journey from a very hungry caterpillar to a beautiful creature taught him an invaluable lesson. He learned that sometimes, the most fulfilling transformation comes from within—embodying change, embracing growth, and finding contentment in the beauty of life itself."),
              const SizedBox(height: 15),
              _buildIllustration('assets/very6.png',),
             const  SizedBox(height: 15),
              _buildText(
              "And so, the very hungry caterpillar's story became a tale of transformation, reminding everyone that true happiness lies not just in filling our stomachs but in nourishing our hearts, embracing change, and finding joy in the journey of self-discovery and growth."),

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