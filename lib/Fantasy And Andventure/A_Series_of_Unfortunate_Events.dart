import 'package:flutter/material.dart';

class ASeriesOfUnfortunateEvents extends StatefulWidget {
  const ASeriesOfUnfortunateEvents({Key? key}) : super(key: key);

  @override
  State<ASeriesOfUnfortunateEvents> createState() => _ASeriesOfUnfortunateEventsState();
}

class _ASeriesOfUnfortunateEventsState extends State<ASeriesOfUnfortunateEvents> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'A Series Of Unfortunate Events',
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
                  'assets/of1.png'),
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
              const  SizedBox(height: 15),
              _buildText(
              "In a world filled with curious mysteries and unfortunate happenings, there existed three clever siblings: Violet, Klaus, and Sunny Baudelaire. Their lives took a drastic turn when a tragic fire destroyed their home and claimed the lives of their parents."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/of2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Left orphaned and alone, the Baudelaire children found themselves placed under the guardianship of a distant relative, Count Olaf. However, their hopes for a safe and loving home were dashed when they discovered Count Olaf's nefarious intentions to steal their family fortune.Count Olaf, a devious and cunning man, hatched a series of wicked schemes to obtain the Baudelaire inheritance. Disguised in various outlandish personas, he relentlessly pursued the children across a series of unfortunate events, each more perilous than the last."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/of3.png',),
              const   SizedBox(height: 15),
              _buildText(
              "Despite their misfortunes, the Baudelaire siblings exhibited extraordinary courage, intelligence, and resourcefulness. Violet, the eldest, was an inventor and a quick thinker. Klaus, the middle child, possessed an insatiable love for books and a keen intellect. Sunny, the youngest, had a remarkable talent for biting things with her exceptionally sharp teeth.Throughout their tumultuous journey, the siblings encountered a colorful array of eccentric characters, some of whom aided their escape from Count Olaf's clutches, while others posed new challenges and mysteries to unravel."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/of4.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As they navigated through the treacherous situations orchestrated by Count Olaf, the Baudelaires uncovered secrets about their parents' past and their connection to a secret organization. They learned about the V.F.D. (Volunteer Fire Department), a mysterious group entwined in a web of enigmatic codes and peculiar deeds.Despite their resilience and determination, the Baudelaire children faced constant adversity, and Count Olaf's relentless pursuit continued to loom over them."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/of6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Through trials and tribulations, the Baudelaire siblings displayed unwavering loyalty to each other and an unyielding determination to uncover the truth about their family and the mysteries surrounding them.Their harrowing adventures were chronicled in a series of unfortunate events, where the siblings faced unimaginable trials, narrow escapes, and heartbreaking losses. Yet, their indomitable spirit shone through the darkness, leaving an enduring legacy of resilience and courage in the face of adversity."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/of5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "As the series unfolded, the Baudelaire children's quest for answers continued, leaving readers captivated by their unwavering determination to uncover the truth and persevere against the odds, even in the midst of their unfortunate circumstances."),
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
