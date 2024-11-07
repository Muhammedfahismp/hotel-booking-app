import 'package:flutter/material.dart';
import 'package:hotel_booking_app/customtext.dart';
import 'package:hotel_booking_app/loginpage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

   List<String> list1 = <String>["Male ","Female "];


 String?dropdownbar1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Fill Your Profile",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Column(
        
        children: [
          SizedBox(
            height: 60,
          ),
          Customtext(
            hinttext: "Full Name",
          ),

          Customtext(
            hinttext: "Nick Name",
          ),

          Customtext(
            hinttext: "Date of Birth",
            icon: Icon(Icons.calendar_month_outlined),
          ),

          Customtext(
            hinttext: "Email",
            icon: Icon(Icons.email_outlined),
          ),

          Customtext(
            hinttext: "phone number",
            
          ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 55,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)
                ),
                child: DropdownButton(
                      underline: Container(
                        color: Colors.white,
                      ),
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Gender"),
                        ),
                        items: list1
                            .map<DropdownMenuItem<String>>(
                                (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                            .toList(),
                        value: dropdownbar1,
                        onChanged: (String? value) {
                          setState(() {
                            dropdownbar1 = value;
                          });
                        }),
              ),
            ),



            SizedBox(
              height: 50,
            ),

           InkWell(
              onTap: () {
                Navigator.pop(context,const Loginpage());
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 45,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 28, 224, 34)),
                  child: const Center(
                      child: Text(
                    "Sign In With Password",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
        ],
      ),
    );
  }
}