import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Review extends StatelessWidget {
  const Review({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: <Widget>[
          const Gap(15),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: const Color(0xFFF3F3F3),
                child: Image.asset(
                  "assets/images/smallman.png",
                  width: 30,
                  height: 30,
                ),
              ),
              const Gap(10),
              SizedBox(
                width: size.width - 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.access_time,
                              size: 11,
                            ),
                            Gap(10),
                            Text(
                              "13 Sep, 2020",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: const [
                            Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Gap(2),
                            Text(
                              "rating",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const <Widget>[
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
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
