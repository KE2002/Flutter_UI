import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'choosebrand.dart';
import 'constant.dart';

class MenSection extends StatelessWidget {
  const MenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F6FA),
          ),
          child: IconButton(
            icon: SvgPicture.asset("assets/images/menu.svg"),
            onPressed: () {},
          ),
        ),
        actions: <Widget> [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F6FA),
            ),
            child: const Icon(
              Icons.add_shopping_cart,
              color: Color(0xFF1D1E20),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "AkashnKayEe\n",
                        style: TextStyle(
                          color: Color(0xFF1D1E20),
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        ),
                      ),
                      TextSpan(
                        text: "Welcome to Gucci",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8F959E),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: <Widget> [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.search,
                      ),
                      filled: true,
                      fillColor: textBoxColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: textBoxColor,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: textBoxColor,
                          width: 0.0,
                        ),
                      ),
                      hintText: "Search Here",
                      hintStyle: const TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.mic_none_outlined),
                )
              ],
            ),
            const Gap(20),
            const ChooseBrand()
          ],
        ),
      ),
    );
  }
}
