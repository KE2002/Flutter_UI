import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/constant.dart';
import 'package:login/signin.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // title: Text(
        //   "Login",
        //   style: TextStyle(
        //     color: textColor.withOpacity(
        //       0.80,
        //     ),
        //   ),
        // ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.5,
            width: size.width,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Image.asset("aunty.png"),
          ),
          const Gap(40),
          const Text(
            "Discover Your",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const Gap(5),
          const Text(
            "Own Dream",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const Gap(17),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


//Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et
