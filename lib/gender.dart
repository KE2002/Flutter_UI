import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/women_section.dart';
import 'constant.dart';
import 'men_section.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: Image.asset("assets/images/couple.png"),
            ),
            Container(
              width: size.width * 0.85,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget> [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Look Good, Feel Good\n",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF1D1E20),
                          ),
                        ),
                        TextSpan(
                          text:
                              "\nCreate your individual & unique style and look amazing everyday.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF8F959E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WomenSection(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFFF5F6FA),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 16,
                            bottom: 12,
                            right: 16,
                          ),
                          child: Text(
                            "Women",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF8F959E),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenSection(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            left: 24,
                            bottom: 12,
                            right: 24,
                          ),
                          child: Text(
                            "Men",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  GestureDetector(
                    child: const Text("Skip"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
