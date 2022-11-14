import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
          child: Column(
            children: <Widget>[
              const Gap(20),
              Row(
                children: <Widget>[
                  RotatedBox(
                    quarterTurns: 1,
                    child: IconButton(
                      icon: SvgPicture.asset("assets/images/menu.svg"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              const Gap(30),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("assets/images/profile.png"),
                  ),
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Hemendra",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(5),
                      Row(
                        children: const <Widget>[
                          Text(
                            "Verified Profile",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Gap(5),
                          Icon(
                            Icons.trip_origin,
                            color: Colors.green,
                            size: 10,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Gap(20),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFF5F5F5),
                      ),
                    ),
                    child: const Text(
                      "3 Orders",
                      style: TextStyle(
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.info_outline_rounded),
                  Gap(10),
                  Text(
                    "Account Information",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.lock_outline),
                  Gap(10),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.shopping_bag_outlined),
                  Gap(10),
                  Text(
                    "Order",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.wallet),
                  Gap(10),
                  Text(
                    "My Cards",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.heart_broken),
                  Gap(10),
                  Text(
                    "Wishlist",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: const <Widget>[
                  Icon(Icons.settings),
                  Gap(10),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Gap(135),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.logout_rounded,
                    color: Color(0xFFFF5757),
                  ),
                  Gap(10),
                  Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFF5757),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
