import 'package:flutter/material.dart';

class The_Chronicles_of_Narnia extends StatefulWidget {
  const The_Chronicles_of_Narnia({Key? key}) : super(key: key);

  @override
  State<The_Chronicles_of_Narnia> createState() => _The_Chronicles_of_NarniaState();
}

class _The_Chronicles_of_NarniaState extends State<The_Chronicles_of_Narnia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1b0d2b),
        appBar: AppBar(
          title:  const Center(
            child:  Text(
              'The Chronicles of Narnia',
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
                  'assets/the1.png'),
              const SizedBox(height: 15),
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
              "In a world where magic meets reality, a hidden realm known as Narnia lay beyond the wardrobe of an old and ordinary-looking house in the English countryside. This extraordinary world was filled with enchantment, mythical creatures, and epic adventures."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/the2.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Four siblings - Peter, Susan, Edmund, and Lucy - stumbled upon this mystical land through the back of an old wardrobe while exploring the Professor's house during the World War II evacuation."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/the3.png',),
              const  SizedBox(height: 15),
              _buildText(
              "Upon their arrival in Narnia, they discovered a world frozen in perpetual winter, ruled by the White Witch, Jadis, who had cast a curse to ensure endless cold and darkness. As they ventured deeper into Narnia, they encountered talking animals, dwarfs, centaurs, and other magical beings."),
              const SizedBox(height: 15),
              _buildIllustration('assets/the4.png',),
              const SizedBox(height: 15),
              _buildText(
              "Lucy, the youngest sibling, was the first to enter Narnia and befriends a faun named Mr. Tumnus. She learned of the White Witch's tyranny and the prophecy of the arrival of the Pevensie siblings, who were destined to end her reign and bring back the true ruler, Aslan, the wise and noble lion.The siblings soon found themselves embroiled in a grand quest to free Narnia from the grips of the White Witch. They met Aslan, a majestic lion and the true king of Narnia, who guided and supported them on their journey."),
              const  SizedBox(height: 15),
              _buildIllustration('assets/the5.png',),
              const SizedBox(height: 15),
              _buildText(
              "Together, they battled against the forces of darkness, facing trials of courage, friendship, and sacrifice. Edmund, tempted and misled by the White Witch, learned the value of redemption and forgiveness.Aslan sacrificed himself to save Edmund from the Witch's wrath, demonstrating the ultimate act of love and selflessness. But his sacrifice was not in vain, as he returned more powerful than before, leading the forces of good in a final confrontation against the White Witch."),
              const SizedBox(height: 15),
              _buildIllustration('assets/the6.png',),
              const SizedBox(height: 15),
              _buildText(
              "In an epic battle, the siblings fought alongside Aslan and the creatures of Narnia against the Witch's army, finally defeating her and ending the eternal winter. With the White Witch's defeat, spring blossomed, and Narnia was free once more.The Pevensie siblings were hailed as heroes, and they ruled Narnia alongside Aslan for many years, bringing peace and prosperity to the land. As time passed, they grew into wise and just rulers, shaping Narnia into a harmonious and magical realm."),
              const SizedBox(height: 15),
              _buildIllustration('assets/the7.png',),
              const SizedBox(height: 15),
              _buildText('Their adventures in Narnia became the stuff of legends, passed down through generations, inspiring others to believe in the power of bravery, unity, and goodness. And as they returned to their own world, they carried with them the cherished memories of their time in Narnia, forever changed by the lessons they had learned and the bonds they had formed in that wondrous realm.'),
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

