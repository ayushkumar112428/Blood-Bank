// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../home_page.dart';

class AddedDonorData extends StatefulWidget {
  const AddedDonorData({super.key});

  @override
  State<AddedDonorData> createState() => _AddedDonorDataState();
}

class _AddedDonorDataState extends State<AddedDonorData> {
  bool animate = false;
  @override
  void initState() {
    super.initState();
    startAnimation();
  }
  Future startAnimation () async {
    await Future.delayed(const Duration(microseconds: 5000));
    setState(() {
      animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double wSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1800),
              // bottom: animate ? 130 : 0,
              bottom: size.height * 0.29,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1700),
                opacity: animate ? 1 : 0,
                child: const Image(
                    height: 460,
                    width: 400,
                    image: AssetImage("assets/icons/manIcon.png")),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1800),
              // bottom: animate ? 250 : 0,
              bottom: 220,
              left: wSize*0.5-140,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1700),
                opacity: animate ? 1 : 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.transparent,
                  ),
                  child: const Text(
                    "Successfully Done!",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
