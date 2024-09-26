import 'package:flutter/material.dart';

class Matilda extends StatefulWidget {
  const Matilda({Key? key}) : super(key: key);

  @override
  State<Matilda> createState() => _MatildaState();
}

class _MatildaState extends State<Matilda> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:  const Center(
            child:  Text(
              'Matilda',
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
                  'assets/mat1.png'),
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
              "In a quaint town lived a remarkable girl named Matilda. From a young age, Matilda displayed an extraordinary intellect and a love for books that far surpassed her years. Despite her intelligence, she faced a challenging upbringing with neglectful parents who didn't understand her thirst for knowledge"),
              const   SizedBox(height: 15),
              _buildIllustration('assets/mat2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Matilda found solace in the local library, where she devoured book after book, immersing herself in fantastical worlds and fascinating stories. Her love for reading was her sanctuary, a place where her imagination soared and she found comfort amidst the chaos of her home life."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/mat3.png',),
              const SizedBox(height: 15),
              _buildText(
              "One day, Matilda's life took a remarkable turn when she discovered she possessed a unique gift—an extraordinary power of telekinesis. With a mere thought, she could move objects, an ability that both astonished and thrilled her.As Matilda's powers grew, so did her desire to use them for good. She realized she could right the wrongs in her world, starting with her unkind headmistress, Miss Trunchbull, at Crunchem Hall, a school known for its strictness and cruelty"),
              const SizedBox(height: 15),
              _buildIllustration('assets/mat4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Matilda, armed with courage and her newfound ability, embarked on a mission to challenge the injustices at her school. With cleverness and a touch of mischief, she used her telekinetic powers to outwit Miss Trunchbull and bring justice to her fellow students, all while navigating the challenges of school life and a lack of understanding from her family.Despite facing adversaries and obstacles, Matilda remained resilient, drawing strength from her intelligence, kindness, and the power of her mind. She formed a special bond with her compassionate teacher, Miss Honey, who recognized Matilda's brilliance and nurtured her talents."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/mat5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "With Miss Honey's support and her own determination, Matilda found the courage to stand up for what was right. She used her powers not for revenge but to protect those who couldn't defend themselves, making a difference in the lives of her friends and the school community."),
              const SizedBox(height: 15),
              _buildIllustration('assets/mat6.png',),
              const  SizedBox(height: 15),
              _buildText(
                  "In the end, Matilda's remarkable journey taught her that kindness, intelligence, and the courage to stand up against injustice could overcome even the toughest challenges. With her loving teacher by her side and her unwavering spirit, Matilda embraced her uniqueness and continued to shine brightly, a testament to the power of resilience and the triumph of goodness over adversity."),
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
