import 'package:flutter/material.dart';

class TheLordOfTheRings extends StatefulWidget {
  const TheLordOfTheRings({Key? key}) : super(key: key);

  @override
  State<TheLordOfTheRings> createState() => _TheLordOfTheRingsState();
}

class _TheLordOfTheRingsState extends State<TheLordOfTheRings> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title: const Center(
            child:  Text(
              'The Lord Of The Rings',
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
                  'assets/lord1.png'),
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
              "In the mystical land of Middle-earth, a tale of epic proportions unfolded, a story of courage, friendship, and the struggle between good and evil. At the heart of this saga lay the fate of a powerful ring, forged by the dark lord Sauron to rule over all of Middle-earth."),
              const SizedBox(height: 15),
              _buildIllustration('assets/lord2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The fate of the ring fell into the hands of a humble hobbit named Frodo Baggins. Frodo, accompanied by his loyal friends Samwise Gamgee, Merry Brandybuck, and Pippin Took, embarked on a perilous quest to destroy the ring and prevent its malevolent power from falling into the hands of Sauron."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/lord3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Their journey took them across diverse lands, encountering a fellowship of diverse characters, each with their own strengths and weaknesses. Aragorn, the ranger and heir to the throne, Legolas the elf, Gimli the dwarf, Boromir, and Gandalf the wise wizard, joined Frodo in his quest.The fellowship faced trials and tribulations as they traversed through perilous landscapes, battling against the forces of darkness and encountering mythical creatures such as orcs, trolls, and the fearsome Nazgûl."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/lord4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Frodo and his companions encountered the mesmerizing beauty of Lothlórien, sought refuge in the haven of Rivendell, and navigated treacherous paths through the Mines of Moria. Along the way, they formed unbreakable bonds, forged through adversity and shared sacrifice.As the fellowship ventured closer to Mount Doom, the fiery volcano where the ring was forged, tensions arose, and the group faced internal conflicts and external threats. The lure of the ring's power tested their loyalty and resolve."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/lord5.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Amidst the chaos, Frodo, burdened by the weight of the ring's influence, continued his arduous journey, supported by the unwavering loyalty of Samwise Gamgee. Their friendship and determination became the beacon of hope in the darkness that loomed over Middle-earth.In a climactic battle, the fellowship was scattered, and Frodo, guided by his courage and the friendship of Sam, finally reached Mount Doom. With immense effort and sacrifice, Frodo cast the ring into the fiery depths, destroying its malevolent power and vanquishing Sauron."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/lord6.png',),
              const  SizedBox(height: 15),
              _buildText(
              "The victory came at a great cost. The fellowship was forever changed, and Middle-earth mourned the loss of heroes. Yet, their sacrifice brought forth a new era of peace and hope, as the dark forces were defeated, and the lands began to heal Frodo returned to the Shire, his home, forever changed by his journey. Though the scars of the quest lingered, he found solace in the company of his friends and the bonds forged through their shared trials."),
              const SizedBox(height: 15),
              _buildIllustration('assets/lord7.png',),
              const SizedBox(height: 15),
              _buildText("The tale of Frodo and the fellowship became a legendary saga, a testament to the enduring power of friendship, sacrifice, and the indomitable spirit of those who dared to stand against the forces of darkness. Their story echoed through the ages, inspiring generations with its message of resilience and hope in the face of overwhelming odds."),
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

