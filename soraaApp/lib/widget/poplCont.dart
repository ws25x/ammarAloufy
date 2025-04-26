import 'package:flutter/material.dart';

class popCount extends StatelessWidget {
  final String imgPath;
  final String txt;

  const popCount({super.key, required this.imgPath, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 350,
        height: 180,
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(154, 0, 0, 0),
              BlendMode.darken,
            ),
          ),
        ),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                txt,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // padding: EdgeInsets.all(20),
      
      ),
    );
  }
}
