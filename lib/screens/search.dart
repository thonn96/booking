import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/widgets/search_item.dart';

import '../theme/color.dart';
import '../utils/ModelHotel.dart';
import '../utils/data.dart';
import '../widgets/bottombar_item.dart';
import '../widgets/city_item.dart';
import '../widgets/custom_image.dart';
import '../widgets/feature_item.dart';
import '../widgets/recommend_item.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  _Search createState() => _Search();
  /*@override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 60, 16),
      child: TextField(
        decoration: InputDecoration(
            labelText: "Search",
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)))),
      ),
    );
  }*/


}

class _Search extends State<Search> {
  List<ModelHotel> modelHotel1 = List.from(modelHotel);
  @override
  Widget build(BuildContext context) {
    List barItems = [
      {
        "icon": "assets/icons/home.svg",
        "page": Search(),
      },
      {
        "icon": "assets/icons/search.svg",
        "page": Search(),
      },
      {
        "icon": "assets/icons/pin-area.svg",
        "page": Container(
          alignment: Alignment.center,
          child: Text("Nearby"),
        ),
      },
      {
        "icon": "assets/icons/setting.svg",
        "page": Search(),
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                onChanged: (value)=> update(value),
                cursorColor: Color(0xFF000000),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 100,
              child: SingleChildScrollView(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: modelHotel1.length,
                    itemBuilder: (context, index) {
                      return SearchItem(
                        modelHotel: modelHotel1[index],
                        //data: features[index],
                        index: index,
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  void update(String text){
    setState(() {
      modelHotel1 = modelHotel.where((element) => element.name.contains(text)).toList();
    });
  }
}

