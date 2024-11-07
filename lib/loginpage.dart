import 'package:flutter/material.dart';
import 'package:hotel_booking_app/customtext.dart';
import 'package:hotel_booking_app/homepage.dart';
import 'package:hotel_booking_app/signuppage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Login To Your \nAccount",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            const Customtext(
              hinttext: "Email",
              icons: Icon(Icons.email_outlined),
            ),
            const Customtext(
              hinttext: "Password",
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                  ),
                  Text(
                    "Remember Me",
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage(),));
              },
              child: Container(
                height: 45,
                width: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 28, 224, 34)),
                child: const Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Forgot The Password ?",
                style: TextStyle(color: Color.fromARGB(255, 19, 193, 24)),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
                const Text("Or Continue With"),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Image(
                    image: AssetImage("Assets/Group 92.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 40,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: const Image(
                    image: AssetImage("Assets/Group 91.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 40,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: const Image(
                    image: AssetImage("Assets/Group 90.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Hane An Account? "),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signuppage(),
                          ));
                    },
                    child: const Text(
                      "  Sign Up",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
