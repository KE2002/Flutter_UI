import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class Review extends StatelessWidget {
  const Review({super.key, required this.name, required this.show});
  final String name;
  final bool show;
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
          const Gap(5),
          Row(
            children: [
              show
                  ? SizedBox(
                      width: size.width - 40,
                      child: const ReadMoreText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
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
                    )
                  : const SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}
