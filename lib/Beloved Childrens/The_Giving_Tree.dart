import 'package:flutter/material.dart';

class TheGivingTree extends StatefulWidget {
  const TheGivingTree({Key? key}) : super(key: key);

  @override
  State<TheGivingTree> createState() => _TheGivingTreeState();
}

class _TheGivingTreeState extends State<TheGivingTree> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Giving Tree',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF1b0d2b),
        ),
        body: SingleChildScrollView(
          padding: const   EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIllustration(
                  'assets/tree1.png'),
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
              const   SizedBox(height: 15),
              _buildText(
              " in a quiet corner of a forest, stood a majestic tree—a Giving Tree. This tree possessed a kind heart and a selfless spirit that touched the lives of all who came its way."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tree2.png',),
              const SizedBox(height: 15),
              _buildText(
              "In the shade of the Giving Tree, a young boy found solace. He would spend his days playing, climbing its branches, and basking in the tree's gentle presence. The tree, in turn, found joy in providing the boy with shade, shelter, and countless hours of happiness."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tree3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As the boy grew older, his needs changed, and he sought more from the Giving Tree. He asked for its apples to sell for money, and the tree willingly gave, hoping to bring joy to the boy's life. The boy returned sporadically, each time asking for something more—a branch to build a house, then its trunk to make a boat, and finally, to sit upon its stump.Despite the tree giving all it had to the boy, it found fulfillment in the joy it brought him. But as the boy grew into an old man, he returned to the Giving Tree, weary and in search of rest. The tree, now only a stump, had little left to offer but the comfort of its presence."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tree4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The old man, tired and withered, reflected on the memories he shared with the Giving Tree. He realized the depth of the tree's unwavering love and the sacrifices it made to ensure his happiness.With gratitude in his heart, the old man realized that the most precious gift the Giving Tree had given him was not the apples, the branches, or the trunk—it was the tree's selfless love and unconditional giving."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tree5.png',),
              const SizedBox(height: 15),
              _buildText(
              "In that moment, the old man found peace and contentment. He sat upon the stump of the Giving Tree, feeling the tree's enduring presence and the warmth of its love.The story of the Giving Tree spread far and wide, becoming a timeless tale of selflessness, unconditional love, and the boundless generosity found in the simplest acts of giving."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/tree6.png',),
             const  SizedBox(height: 15),
              _buildText(
              "The Giving Tree's legacy lived on, teaching generations about the beauty of selfless giving and the profound happiness that comes from sharing and caring for others. And amidst the quiet whispers of the forest, the spirit of the Giving Tree continued to inspire kindness and compassion in the hearts of those who listened to its story."),
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
      style: const  TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}