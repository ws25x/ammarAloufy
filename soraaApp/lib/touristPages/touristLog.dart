import 'package:flutter/material.dart';
import '../widget/appColors.dart' as appColor;
import 'package:as_project/widget/textField.dart';
import 'package:as_project/widget/bigButton.dart';
import 'touristSginin.dart';
import '../homePage.dart';

main() {
  runApp(touristLogin());
}

class touristLogin extends StatefulWidget {
  const touristLogin({super.key});

  @override
  State<touristLogin> createState() => _touristLoginState();
}

class _touristLoginState extends State<touristLogin> {


  // take input user
  final emailContoller = TextEditingController();
  final paswordContoller = TextEditingController();

  //login method
  void loginMethod() {} 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text('سُرى', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: appColor.greenFlag,
        ),

        body: SafeArea(

          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),


                Image.asset('assets/images/appicon.png', width: 250, height: 250,),
                // Icon(Icons.lock, size: 100, color: appColor.greenFlag),

                Padding(padding: EdgeInsets.only(bottom: 40)),

                Text('اهلا مرة اخرى', style: TextStyle(fontSize: 27)),

                Padding(padding: EdgeInsets.only(bottom: 40)),


                // text field
                textField(controlloer: emailContoller, hintText: 'email', secureText: false),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                textField(controlloer: paswordContoller, hintText: 'password', secureText: true),
                Padding(padding: EdgeInsets.only(bottom: 15)),

                // create account & contunie without account
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,  MaterialPageRoute(builder: (context) => const sgin())
                          );
                        },
                        child: TextButton(onPressed: (){ 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const homePage() ));
                        },
                        child: Text('دخول بدون حساب', style: TextStyle(color: Colors.grey))
                        )
                        ),

                      Padding(padding: EdgeInsets.only(left: 110)),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,  MaterialPageRoute(builder: (context) => const sgin())
                          );
                        },
                        child: Text('لاتملك حساب؟', style: TextStyle(color: Colors.grey))
                        ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),

                // login button 
                bigbutton(onTap: loginMethod,txt: 'تسجيل',),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
