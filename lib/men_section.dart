import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:login/new_arrival_cards.dart';
import 'choosebrand.dart';
import 'constant.dart';

class MenSection extends StatelessWidget {
  const MenSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        actions: <Widget>[
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20 * 2, right: 20 * 2),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: primaryColor.withOpacity(0.40),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.wallet),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
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
              children: <Widget>[
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
            const ChooseBrand(),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "New Arrival",
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
            const Gap(20),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width > 380
                      ? (size.width / 250).round()
                      : size.width > 300
                          ? 2
                          : 1,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                children: const [
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                  NewArrivalCard(text: "men2"),
                  NewArrivalCard(text: "men1"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
