import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/constant.dart';
import 'package:login/review.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Reviews",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Color(0xFF1D1E20),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFFEFEFE),
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
                  color: Color(0xFFF3F3F3),
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
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "245 Reviews",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(3),
                    Row(
                      children: const <Widget>[
                        Text("4.8"),
                        Gap(3),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFF981F),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFF981F),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFF981F),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFF981F),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFF981F),
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFF7043),
                    ),
                  ),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.edit_note,
                        color: Colors.white,
                      ),
                      Gap(3),
                      Text(
                        "Add Review",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Column(
                  children: const <Widget>[
                    Review(
                      name: "Akash",
                      show: true,
                    ),
                    Review(
                      name: "Kayee",
                      show: true,
                    ),
                    Review(
                      name: "Flutter",
                      show: true,
                    ),
                    Review(
                      name: "Akash",
                      show: true,
                    ),
                    Review(
                      name: "Okkkkkkkkk",
                      show: true,
                    ),
                    Review(
                      name: "Plzzzzzzzzzzzz",
                      show: true,
                    ),
                    Review(
                      name: "Hi",
                      show: true,
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
