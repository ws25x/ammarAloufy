import 'package:as_project/widget/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; 
import 'appColors.dart' as appColor;
import 'bookPage.dart';


class bookContainer extends StatelessWidget {


  final String imgPath;

  final String tourGuideName;
  final String city;
  final String time;

  final void Function()? onTap;


  const bookContainer({
  super.key,

  required this.imgPath,

  required this.tourGuideName,
  required this.city,
  required this.time,

  required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints){
        return Container(
        width: Constraints.maxWidth * 0.9,
        // height: Constraints.maxHeight * 0.4,
        // constraints: BoxConstraints(
        //   maxHeight: 300,
        // ),
      
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 1),
            ),
          ],
        ),
      
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // img
            Padding(padding: EdgeInsets.only(bottom: 6)),
      
            Container(
      
              width: 180,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
      
            // Padding(padding: EdgeInsets.only(bottom: 12)),
      
      
      
        Flexible(
          child: Row(
            textDirection: TextDirection.rtl,
            children: [Icon(Icons.person), Text('$tourGuideName ')],
          ),
        ),
        Flexible(
          child: Row(
            textDirection: TextDirection.rtl,
            children: [Icon(Icons.location_city), Text('$city ')],
          ),
        ),
        Flexible(
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [Icon(Icons.timer), Text('$time ')],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: appColor.greenFlag ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => bkPage(imgPath: imgPath, tourGuideName: tourGuideName, city: city, time: time) ));

                },
                child: Text('احجز الان', style: TextStyle(color: appColor.sec),),
              ),
            ],
          ),
          ),
          ],
        ),
      );

      }

  );
  }
}
