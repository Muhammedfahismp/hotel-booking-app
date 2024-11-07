import 'package:flutter/material.dart';
import 'package:hotel_booking_app/loginpage.dart';
import 'package:hotel_booking_app/signuppage.dart';

class Next10 extends StatefulWidget {
  const Next10({super.key});

  @override
  State<Next10> createState() => _Next10State();
}

class _Next10State extends State<Next10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Center(
              child: Text(
            "Let's You In",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 53,
              width: 338,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("Assets/Group 87.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 53,
                width: 338,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset("Assets/Group 88.png"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 53,
              width: 338,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset("Assets/Group 89.png"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 2,
                width: 150,
                color: Colors.grey,
              ),
              const Text("OR"),
              Container(
                height: 2,
                width: 150,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ));
              },
              child: Container(
                height: 55,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                    child: Text(
                  "Sign in with password",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't Have an Account?"),
              TextButton(
                  onPressed: () {},
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signuppage(),
                          ));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
