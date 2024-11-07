import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {

  const Customtext({super.key, this.hinttext,this.icons,this.icon});
  
  final String?hinttext;
  final Icon? icons;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
       
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hinttext,
            prefixIcon: icons,
            suffixIcon: icon
          ),
          
          
        )
        ],
      ),
    );
  }
}