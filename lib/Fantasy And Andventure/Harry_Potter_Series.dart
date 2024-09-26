import 'package:flutter/material.dart';

class Harry_Potter_Series extends StatefulWidget {
  const Harry_Potter_Series({Key? key}) : super(key: key);

  @override
  State<Harry_Potter_Series> createState() => _Harry_Potter_SeriesState();
}

class _Harry_Potter_SeriesState extends State<Harry_Potter_Series> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'Harry Potter',
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
                  'assets/Harry1.png'),
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
              const   SizedBox(height: 15),
              _buildText(
              " in a world parallel to our own, there existed a magical realm filled with wonders beyond imagination. This realm was home to a young boy named Harry Potter, a boy who would become known throughout the magical world for his bravery, friendship, and courage in the face of darkness."),
              const   SizedBox(height: 15),
              _buildIllustration('assets/Harry2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Harry's story began when he was just a baby. He survived a dark curse cast by the dark wizard Voldemort, who sought to conquer the magical world. The curse rebounded upon Voldemort, rendering him powerless and vanishing him from existence. Harry, marked by a lightning-shaped scar on his forehead, became known as The Boy Who Lived."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/Harry3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Raised by his unkind relatives, the Dursleys, Harry grew up unaware of his magical heritage. On his eleventh birthday, everything changed when he received an acceptance letter to Hogwarts School of Witchcraft and Wizardry.At Hogwarts, Harry discovered a world of magic, friendship, and adventure. He became friends with Ron Weasley and Hermione Granger, forming an unbreakable bond that would help him face the challenges ahead."),
              const SizedBox(height: 15),
              _buildIllustration('assets/Harry4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Throughout his years at Hogwarts, Harry encountered various trials and tribulations. He discovered the truth about his past, faced mythical creatures, and uncovered the mysteries surrounding his scar and the dark wizard, Voldemort, who had returned to power.Guided by his mentors, Professor Dumbledore and his loyal friends, Harry braved dangers, fought against dark forces, and learned valuable lessons about love, loyalty, and sacrifice."),
              const SizedBox(height: 15),
              _buildIllustration('assets/Harry5.png',),
              const   SizedBox(height: 15),
              _buildText(
              "As Harry's journey unfolded, he faced Voldemort in a final epic battle, a clash between good and evil. With bravery and the support of his friends, Harry emerged victorious, defeating Voldemort once and for all and restoring peace to the wizarding world.After the battle, Harry went on to lead a fulfilling life. He married Ginny Weasley and became a loving husband and father to their children. He also pursued a career as an Auror, protecting the magical community and ensuring that dark forces never threatened the world again."),
              const   SizedBox(height: 15),
              _buildIllustration('assets/Harry6.png',),
              const   SizedBox(height: 15),
              _buildText(
              "Harry's story became a legend in the magical world, a tale of hope, friendship, and the triumph of good over evil. His legacy lived on, inspiring future generations to stand against darkness and to always believe in the power of love and unity.And as time passed, the memory of Harry Potter, the boy who conquered the dark, remained a symbol of bravery and resilience, forever etched in the history of the magical world."),
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
