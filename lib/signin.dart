import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            Text(
              "Welcome Back",
              style: TextStyle(color: textColor, fontSize: 32),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam  etcc ",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textBoxColor,
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
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textBoxColor,
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
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const Text("Forgot Password?")
          ],
        ),
      ),
    );
  }
}


//Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam  etcc 