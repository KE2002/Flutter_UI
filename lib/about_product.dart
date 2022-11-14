import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/address.dart';
import 'package:login/constant.dart';
import 'package:login/review.dart';

import 'package:login/size_box.dart';
import 'package:readmore/readmore.dart';

class AboutProduct extends StatelessWidget {
  const AboutProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Address(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -10),
                blurRadius: 35,
                color: primaryColor.withOpacity(0.40),
              ),
            ],
            color: primaryColor,
          ),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFEFEFE),
                ),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
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
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFEFEFE),
              ),
              child: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Gap(24),
              SizedBox(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/man1zoom.png",
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      width: size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              Text(
                                "Men's Printed Pullover Hoodie",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const <Widget>[
                              Text(
                                "Nike Club Fleece",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$99",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/man1part1.png",
                                  ),
                                  Image.asset(
                                    "assets/images/man1part2.png",
                                  ),
                                  Image.asset(
                                    "assets/images/man1part3.png",
                                  ),
                                  Image.asset(
                                    "assets/images/man1part4.png",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Size Guide",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const <Widget>[
                                  SizeBox(data: "S"),
                                  SizeBox(data: "M"),
                                  SizeBox(data: "L"),
                                  SizeBox(data: "XL"),
                                  SizeBox(data: "2XL"),
                                ],
                              ),
                            ),
                          ),
                          const Gap(20),
                          Row(
                            children: const <Widget>[
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const ReadMoreText(
                            "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            trimLines: 3,
                            trimMode: TrimMode.Line,
                            style: TextStyle(
                              color: Color(0xFF8F959E),
                            ),
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            lessStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text(
                                "Reviews",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Review(
                                name: "Akash",
                              ),
                              Review(
                                name: "Kayee",
                              ),
                              Review(
                                name: "Ronald Richards",
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "Total Price",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Gap(5),
                                  Text(
                                    " with VAT,SD",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "\$125",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
