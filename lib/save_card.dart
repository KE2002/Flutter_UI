import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/choosebrand.dart';

import 'brand_card.dart';
import 'constant.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20 * 2, right: 20 * 2),
        height: 80,
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: primaryColor.withOpacity(0.40),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            "Save Address",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Color(0xFF1D1E20),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFF3F3F3),
        leading: GestureDetector(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFEFEFE),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/Card1.png",
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/Card2.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Add new Card"))
        ],
      ),
    );
  }
}
