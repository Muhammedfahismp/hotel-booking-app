import 'package:flutter/material.dart';
import 'package:hotel_booking_app/next_6.dart';

class Next5 extends StatefulWidget {
  const Next5({super.key});

  @override
  State<Next5> createState() => _Next5State();
}

class _Next5State extends State<Next5> {

  @override
  void initState() {
    
    super.initState();
    splash();

  }
  splash() async {
   await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Next6(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(image: AssetImage("Assets/WhatsApp Image 2024-10-23 at 13.45.07_b7110eab.jpg"),fit: BoxFit.cover,),
      ),
    );
  }
}