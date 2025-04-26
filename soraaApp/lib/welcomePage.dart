import 'package:flutter/material.dart';
import 'widget/appColors.dart' as appColor ;
import 'touristPages/touristLog.dart';

void main() {
runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: welcome(),
  ));}

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      

        appBar: AppBar(
          title: Text('سُرى', style: TextStyle(color: Color.fromARGB(255,248, 245, 233),),),
          centerTitle: true,
          backgroundColor: appColor.greenFlag,
        ),

    

        backgroundColor:  appColor.greenFlag,

        body: Column(

          children: [
            
            Padding(padding: EdgeInsets.only(top: 50)),
            Image.asset('assets/images/appicon.png', width: 350, height: 350,),

            Padding(padding: EdgeInsets.only(top: 105)),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255,248, 245, 233),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [

                    Padding(padding: EdgeInsets.only(top: 40)),

                    Text( 'مرحبا ', style: TextStyle( fontSize: 35, fontWeight: FontWeight.bold, )),
                    Text(' !حدد مين انت ', style: TextStyle(fontSize: 20)),

                    Padding(padding: EdgeInsets.only(bottom: 20)),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('مرشد', style: TextStyle(fontSize: 20, color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 49, 115, 51),
                              minimumSize: Size(150, 40)
                              
                            ),
                          ),
                          
                          Padding(padding: EdgeInsets.only(right: 20)),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const touristLogin() ));
                            },
                            child: Text('سائح', style: TextStyle(fontSize: 20, color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 49, 115, 51),
                              minimumSize: Size(150, 40)

                            ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    
    
  }
}
