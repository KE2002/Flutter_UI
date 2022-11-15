import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:login/cart.dart';
import 'package:login/new_arrival_cards.dart';
import 'package:login/side_menu.dart';
import 'choosebrand.dart';
import 'constant.dart';

class MenSection extends StatefulWidget {
  const MenSection({super.key});

  @override
  State<MenSection> createState() => _MenSectionState();
}

class _MenSectionState extends State<MenSection> {
  bool isIconVisible = false;
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      // resizeToAvoidBottomInset: false,
      drawer: const SideMenu(),
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
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cart(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF5F6FA),
              ),
              child: const Icon(
                Icons.shopping_bag_rounded,
                color: Color(0xFF1D1E20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(18),
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
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: size.height * 0.20,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  child:
                                      Image.asset("assets/images/profile.png"),
                                ),
                                const Gap(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                const Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Total Amount"),
                                    Text(
                                      "\$500",
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.wallet),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          // shrinkWrap: true,
          // primary: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
            ),
            const Gap(20),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: size.width - 95,
                    child: TextField(
                      controller: _controller,
                      key: formKey,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            isIconVisible = true;
                          });
                        } else {
                          setState(() {
                            isIconVisible = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: isIconVisible
                            ? IconButton(
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onPressed: () {
                                  setState(() {
                                    isIconVisible = false;
                                  });
                                  _controller.clear();
                                },
                                icon: const Icon(Icons.close_sharp),
                              )
                            : null,
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
            ),
            const Gap(20),
            const ChooseBrand(),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
            ),
            const Gap(20),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(20.0),
              child: GridView(
                shrinkWrap: true,
                primary: false,
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
