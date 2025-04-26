import 'package:flutter/material.dart';
// import 'page1.dart';

void main() {
runApp(const MaterialApp(home: MyWidget(),));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        // ****************** App Bar ******************
        appBar: AppBar(
          title: Text(
            "ammar app",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        // ****************** Body ******************
        body: Center(
          child: Container(
            height: 300,
            width: 350,

            // ****************** Box ******************
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              // ****************** Box Shadow ******************
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),

            // ignore: sort_child_properties_last
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "welcome ",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                // Email Field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    icon: Icon(Icons.email),
                  ),
                ),

                // Pass Field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.password),
                  ),
                ),

                Padding(padding: EdgeInsets.only(bottom: 20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    //continue without login Button
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const page1()),
                        // );
                      },
                      child: Text('continue without login'),
                    ),

                    //login button
                    ElevatedButton(
                      onPressed: () {
                        //push
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),

                      child: Text(
                        'login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            padding: EdgeInsets.all(30),
          ),
        ),
      ),
    );
  }
}
