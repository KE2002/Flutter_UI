import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/brand_card.dart';
import 'package:login/constant.dart';

class ChooseBrand extends StatelessWidget {
  const ChooseBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Choose Brand",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: textColor1,
              ),
            ),
            Text(
              "View All",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8F959E),
              ),
            ),
          ],
        ),
        const Gap(10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/Adidas.png",
                text: 'Adidas',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/Adidas.png",
                text: 'Adidas',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/Adidas.png",
                text: 'Adidas',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/nike.png",
                text: 'Nike',
              ),
              Gap(10),
              BrandCard(
                icon: "assets/images/Adidas.png",
                text: 'Adidas',
              ),
            ],
          ),
        )
      ],
    );
  }
}
