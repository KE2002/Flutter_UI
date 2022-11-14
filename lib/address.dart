import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/save_card.dart';

import 'constant.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool isstate = false;
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
              builder: (context) => const SaveCard(),
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
                "Save Address",
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Color(0xFF1D1E20),
          ),
        ),
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
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                const Gap(5),
                TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Contry",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          const Gap(5),
                          TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF5F6FA),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                    color: textBoxColor, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                    color: textBoxColor, width: 0.0),
                              ),
                              hintText: "Finland",
                              hintStyle: TextStyle(
                                color: primaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "City",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          const Gap(5),
                          TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF5F6FA),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                    color: textBoxColor, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                    color: textBoxColor, width: 0.0),
                              ),
                              hintText: "Helsinki",
                              hintStyle: TextStyle(
                                color: primaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(20),
                const Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                const Gap(5),
                TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    hintText: "+1 710-000-999",
                    hintStyle: TextStyle(
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ),
                ),
                const Gap(20),
                const Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                const Gap(5),
                TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: textBoxColor, width: 0.0),
                    ),
                    hintText: "Enter Address",
                    hintStyle: TextStyle(
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Save as primary address",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    CupertinoSwitch(
                      value: isstate,
                      onChanged: (value) {
                        isstate = value;
                        setState(
                          () {},
                        );
                      },
                      thumbColor: CupertinoColors.white,
                      activeColor: primaryColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
