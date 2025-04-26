import 'appColors.dart' as appColor;
import 'package:flutter/material.dart';
import 'bigButton.dart';




class bkPage extends StatelessWidget {

  final String imgPath;

  final String tourGuideName;
  final String city;
  final String time;

  const bkPage({
  super.key,

  required this.imgPath,

  required this.tourGuideName,
  required this.city,
  required this.time,

  });


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: appColor.greenFlag,
          // title: Text('text'),
        ),

        body: Column(
          
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Padding(padding: EdgeInsets.only(top: 20)),
          
          Center(
            child: Container(
                width: 350,
                height: 180,
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(90, 0, 0, 0),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
          ),
            
            SizedBox(height: 40,),
            
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [Icon(Icons.person), Text(' المرشد : $tourGuideName', style: TextStyle(fontSize: 21),)],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [Icon(Icons.location_city), Text('المدينة : $city', style: TextStyle(fontSize: 21),)],
                ),
                Row(
                        textDirection: TextDirection.rtl,
                        children: [Icon(Icons.timer), Text('المدة : $time', style: TextStyle(fontSize: 21),)],
                ),
              ],
            ),
          ),
          
          
          
          
          SizedBox(height: 40,),
          
          Text('----------------------------------------------\n----------------------------------------------\n----------------------------------------------\n----------------------------------------------\n'),

          SizedBox(height: 140,),

          bigbutton(onTap: () {}, txt: 'احجز'),
          

            
          ],
        ),
      ),
    );
  }
}