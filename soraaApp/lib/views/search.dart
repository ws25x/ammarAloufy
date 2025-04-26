import 'package:flutter/material.dart';
import '../widget/appColors.dart' as appColor;

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor.greenFlag,
          title: Text('البحث', style: TextStyle(color: Colors.white)),
        ),

        backgroundColor: appColor.sec,

        body: Column(
          children: [
            SizedBox(height: 20),

            SearchBar(),

            SizedBox(height: 20),

            // tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',),

            Flexible(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          childAspectRatio: 4,
        ),
    
        padding: EdgeInsets.only(top: 20, bottom: 20),
    
        itemCount: 8,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
              
            case 1:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            case 2:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            case 3:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            case 4:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            case 5:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            case 6:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);

            case 7:
              return tourGuideInfo(name: 'الاسم', language: 'لغة', city: 'مدينة',);
    
            default:
              return Container();
          }
        },
    
      ),
    )
          ],
        ),
      ),
    );
  }
}

class tourGuideInfo extends StatelessWidget {
  final String name;
  final String language;
  final String city;
  const tourGuideInfo({super.key, required this.name, required this.language, required this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 95,
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Icon(Icons.person, size: 50),
            SizedBox(width: 15),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'المرشد : $name',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                ),
                Text(
                  'اللغات : $language',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                ),
                Text(
                  'المدن السياحية : $city',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'البحث',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade700),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor.greenFlag),
            ),
          ),
        ),
      ),
    );
  }
}
