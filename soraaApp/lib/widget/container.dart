import 'package:flutter/material.dart';

main(){
  runApp(cont());
}

// الرحلة
// الوجهة
// المرشد


class cont extends StatelessWidget {
  const cont({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 250,height: 250,
      decoration: BoxDecoration(
        color: Colors.amber
      ),
      child: Center(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
