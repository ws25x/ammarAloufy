
import 'package:flutter/material.dart';
import '/../widget/bookContainer.dart';


class available extends StatefulWidget {
  const available({super.key});

  @override
  State<available> createState() => _availableState();
}

class _availableState extends State<available> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.73,
                ),

                padding: EdgeInsets.only(top: 20,bottom: 20),

                itemCount: 4,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return bookContainer(
                        imgPath: 'assets/images/jed.jpg',
                        tourGuideName: 'احمد',
                        city: 'جدة',
                        time: ' سبع ايام',
                        onTap: () {
                          
                        },
                      );

                    case 1:
                      return bookContainer(
                        imgPath: 'assets/images/riyadh.jpg',
                        tourGuideName: 'عمار',
                        city: 'الرياض',
                        time: 'ثلاث ايام',
                        onTap: () {},
                      );

                    case 2:
                      return bookContainer(
                        imgPath: 'assets/images/mak.jpg',
                        tourGuideName: 'سارة',
                        city: 'مكة',
                        time: 'خمس ايام',
                        onTap: () {},
                      );

                    case 3:
                      return bookContainer(
                        imgPath: 'assets/images/madinah.jpg',
                        tourGuideName: 'حسن',
                        city: 'مدينة',
                        time: 'اربع ايام',
                        onTap: () {},
                      );
                    default:
                      return Container();
                  }
                },
              
              // padding: EdgeInsets.only(bottom: 20),
              ),
            
            );
          

  }
}