import 'package:flutter/material.dart';

class CharlottesWeb extends StatefulWidget {
  const CharlottesWeb({Key? key}) : super(key: key);

  @override
  State<CharlottesWeb> createState() => _CharlottesWebState();
}

class _CharlottesWebState extends State<CharlottesWeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              "Charlotte's Web",
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
                  'assets/web1.png'),
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
              "In a picturesque farm nestled in the countryside, a remarkable story unfolded—a story of friendship, bravery, and the extraordinary bond between a pig and a spider."),
              const   SizedBox(height: 15),
              _buildIllustration('assets/web2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "On the Zuckerman farm lived a pig named Wilbur, a gentle and affable creature who found himself in a precarious situation. Threatened with an uncertain fate, Wilbur was saved by the compassionate young girl named Fern Arable, who convinced her father to let her raise the piglet as her own.Wilbur thrived under Fern's care, growing stronger and forming an unlikely friendship with the animals in the barn, particularly a wise and articulate spider named Charlotte. Charlotte, with her keen intellect and compassionate heart, took an immediate liking to Wilbur, and the two formed a bond that would change their lives forever."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/web3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As Wilbur faced the daunting reality of his future, Charlotte, with her exceptional talent for spinning words, devised a plan to save him from being sent to the slaughterhouse. She began weaving messages into her intricate webs, praising Wilbur's virtues and proclaiming him as Some Pig, Terrific, Radiant, and Humble. Her clever ploy captivated the attention of the entire town, transforming Wilbur into a local sensation.As Charlotte's webs attracted crowds, Wilbur's fame soared. Through it all, the bond between the pig and the spider deepened. Charlotte, selflessly dedicating herself to Wilbur's well-being, spun her webs with unwavering determination, all the while facing her own fragile mortality."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/web4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Despite her diminishing strength, Charlotte remained determined to help her friend. Her wise words and unwavering support bolstered Wilbur's spirits, teaching him the true meaning of friendship, loyalty, and sacrifice.As the seasons changed, Charlotte's time drew to a close, leaving Wilbur heartbroken and bereft. However, her legacy lived on in the remarkable act of kindness she had performed for her dear friend."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/web5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Wilbur, forever changed by Charlotte's unwavering devotion, carried her memory in his heart. Her selfless actions inspired him to carry on her legacy of kindness and compassion.With Fern's support, Wilbur continued to live a fulfilling life on the farm, always cherishing the memories of his dear friend Charlotte and the invaluable lessons she had taught him."),
              const SizedBox(height: 15),
              _buildIllustration('assets/web6.png',),
              const SizedBox(height: 15),
              _buildText(
              "The tale of Charlotte and Wilbur's extraordinary friendship became a cherished story, reminding all who heard it about the power of love, friendship, and the profound impact one can have through acts of selflessness and kindness. And in the quiet corners of the Zuckerman farm, Charlotte's spirit lingered, weaving its own timeless web of love and inspiration."),
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