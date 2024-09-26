import 'package:flutter/material.dart';
import 'Beloved Childrens/Beloved Childrens.dart';
import 'Fairy Tales/FairyTales.dart';
import 'Fantasy And Andventure/Fantasy_And_Adventure.dart';
import 'Timeless Childerns/Timeless_Childerns.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1b0d2b),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child:  Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/kid.png'),
                    fit: BoxFit.cover,
                  ),
                  color: const Color(0xFF231633),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const  Center(
              child: Text(
                "Magical Reads",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildInkWell(
                          context,
                          'assets/e.png',
                          'Fairy Tales',
                          const FairyTales(),
                        ),
                        _buildInkWell(
                          context,
                          'assets/fans.png',
                          'Mystery Tales',
                          const Fantasy_And_Adventure(),
                        ),
                      ]
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInkWell(
                        context,
                        'assets/a.png',
                        "Fantasy Tales ",
                        const Beloved_Childrens(),
                      ),
                      _buildInkWell(
                        context,
                        'assets/d.png',
                        "Wonder Tales",
                        const TimelessChildren(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInkWell(BuildContext context, String imagePath, String text, Widget route) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Column(
        children: [
          _buildContainer(imagePath),
          const SizedBox(height: 10),
          _buildText(text),
        ],
      ),
    );
  }
  Widget _buildContainer(String imagePath) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFF231633),
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
