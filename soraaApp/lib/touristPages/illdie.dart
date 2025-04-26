import 'package:flutter/material.dart';
import '../widget/appColors.dart' as appColor ;

main(){
  runApp(touristLogin());
}

class touristLogin extends StatefulWidget {
  const touristLogin({super.key});

  @override
  State<touristLogin> createState() => _touristLoginState();
}

class _touristLoginState extends State<touristLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
      backgroundColor: appColor.greenFlag,

      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,height: 300,
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            

            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                
                Center(child: Text('login', style: TextStyle(fontSize: 25),)),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.002),
                  child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'email',
                  
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8), 
                      ),
                  
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                  
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                  
                  
                  ),
                  
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),

                TextField(
                decoration: InputDecoration(
                  
                    icon: Icon(Icons.email),
                    hintText: 'email',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),

                    enabledBorder: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.blue),
                    ),


                ),
                
                ),
              ],
            ),
          )
        ],
        ),
      ),

        // body: ,
      ),
    );
  }
}
