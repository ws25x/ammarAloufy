import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // إزالة شريط الـ Debug
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ألوان مخصصة
    const Color primaryGreen = Color(0xFF4F6D54); // أخضر داكن
    const Color secondaryGreen = Color(0xFF8FAF8F); // أخضر فاتح

    return Scaffold(
      backgroundColor: primaryGreen,
      body: Stack(
        children: [
          // زر أعلى اليسار (مثال: تغيير اللغة)
          Positioned(
            top: 40,
            left: 20,
            child: InkWell(
              onTap: () {
                // إجراء عند الضغط
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'E',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          
          // زر أعلى اليمين (مثال: إغلاق أو رجوع)
          Positioned(
            top: 40,
            right: 20,
            child: InkWell(
              onTap: () {
                // إجراء عند الضغط
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),

          // الصورة في المنتصف
          Center(
            child: Image.asset(
              'assets/images/map.png', // ضع مسار الصورة الخاصة بك
              width: 200,
              height: 200,
            ),
          ),

          // الحاوية في الأسفل
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              // الارتفاع حسب رغبتك أو محتوى الحاوية
              height: 200,
              decoration: BoxDecoration(
                color: secondaryGreen,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // الخيار الأول
                    _buildOptionRow(
                      bulletColor: Colors.red,
                      text: 'التسجيل كسائح / سائحة',
                    ),
                    const SizedBox(height: 15),
                    // الخيار الثاني
                    _buildOptionRow(
                      bulletColor: Colors.blue,
                      text: 'التسجيل كمرشد / مرشدة سياحي/ة',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// دالة صغيرة لبناء صف يحتوي على دائرة (Bullet) ونص
  Widget _buildOptionRow({
    required Color bulletColor,
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // الدائرة الملونة (Bullet)
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: bulletColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        // النص
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
