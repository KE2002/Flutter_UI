import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/address.dart';

import 'constant.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
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
                "Checkout",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF3F3F3),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 35,
                      color: primaryColor.withOpacity(0.40),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mediumman.png"),
                      const Gap(15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.4,
                            child: const Text(
                              "Men's Tie-Dye T-Shirt Nike Sportswear",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(10),
                          const Text("\$99 (+\$4.00 Tax)"),
                          const Gap(20),
                          Row(
                            children: const [
                              Icon(
                                Icons.arrow_downward_outlined,
                                size: 15,
                              ),
                              Gap(20),
                              Text("1"),
                              Gap(20),
                              Icon(
                                Icons.arrow_upward_outlined,
                                size: 15,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Container(
                width: size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 35,
                      color: primaryColor.withOpacity(0.40),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mediumman.png"),
                      const Gap(15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.4,
                            child: const Text(
                              "Men's Tie-Dye T-Shirt Nike Sportswear",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(10),
                          const Text("\$99 (+\$4.00 Tax)"),
                          const Gap(20),
                          Row(
                            children: const [
                              Icon(
                                Icons.arrow_downward_outlined,
                                size: 15,
                              ),
                              Gap(20),
                              Text("1"),
                              Gap(20),
                              Icon(
                                Icons.arrow_upward_outlined,
                                size: 15,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Row(
                children: const [
                  Text(
                    "Delivery Address",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/map.png"),
                  const Gap(5),
                  SizedBox(
                    width: size.width * 0.6,
                    child: const Text(
                      "43, Electronics City Phase 1,Electronic City",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8F959E)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(5),
                  Icon(Icons.check_circle_outlined)
                ],
              ),
              const Gap(10),
              Row(
                children: const [
                  Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/visa.png"),
                  const Gap(5),
                  SizedBox(
                    width: size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Visa Classic",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "**** 7690",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8F959E)),
                        )
                      ],
                    ),
                  ),
                  const Gap(5),
                  Icon(Icons.check_circle_outlined)
                ],
              ),
              const Gap(20),
              Row(
                children: const [
                  Text(
                    "Other Info",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Subtotal",
                    style: TextStyle(color: Color(0xFF8F959E)),
                  ),
                  Text(
                    "\$440",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Delivery Charge",
                    style: TextStyle(color: Color(0xFF8F959E)),
                  ),
                  Text(
                    "\$10",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(color: Color(0xFF8F959E)),
                  ),
                  Text(
                    "\$450",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
