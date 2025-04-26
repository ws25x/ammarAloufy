import 'package:as_project/widget/container.dart';
import 'package:flutter/material.dart';
import '../../widget/appColors.dart' as appColor;

class coming extends StatelessWidget {
  const coming({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: 5,
        ),
    
        padding: EdgeInsets.only(top: 20, bottom: 20),
    
        itemCount: 8,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return comingWidget(txt: 'سباق الفورملا');
              
            case 1:
              return comingWidget(txt: 'مهرجان تمور الاحساء');
    
            case 2:
              return comingWidget(txt: 'المعرض الدولي للقهوة و الشكولاتة');
    
            case 3:
              return comingWidget(txt: 'اسبوع مسك للفنون');              
    
            case 4:
              return comingWidget(txt: 'مهرجان الافلام السعودي');
    
            case 5:
              return comingWidget(txt: 'موسم جدة');
    
            case 6:
              return comingWidget(txt: 'كوميكون ارابيا');

            case 7:
              return comingWidget(txt: 'اسبوع الطاقة الخضراء');
    
            default:
              return Container();
          }
        },
    
      ),
    );
  }
}

// Column(
//   children: [
//     comingWidget(txt: 'txt'),
//     comingWidget(txt: 'txt'),
//     comingWidget(txt: 'txt'),
//     comingWidget(txt: 'txt'),
//     comingWidget(txt: 'txt'),
//   ],
// );

// Padding(
//   padding: const EdgeInsets.symmetric(vertical: 8.0),
//   child: Container(
//     height: 80, width: 350,
//     child: PageView(
//                   scrollDirection:  Axis.vertical,
//                   children: [
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                   ],
//                 ),
//   ),
// );

// PageView(
//                   scrollDirection:  Axis.horizontal,
//                   children: [
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                     comingWidget(txt: 'txt'),
//                   ],
//                 );

class comingWidget extends StatelessWidget {
  final String txt;

  const comingWidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        // padding: EdgeInsets.all(value),
        width: 330,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                txt,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: appColor.greenFlag,
                ),
              ),
              Icon(Icons.arrow_back_ios, color: appColor.greenFlag),
            ],
          ),
        ),
      ),
    );
  }
}
