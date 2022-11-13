import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/constant.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$text.png",
            width: 160,
            height: 203,
          ),
          const Gap(10),
          SizedBox(
            width: 160,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Trail Running Jacket Nike Windrunner\n",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: textColor1),
                    ),
                    TextSpan(
                      text: "\$450",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
