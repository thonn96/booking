
import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/ModelBooking.dart';
import 'package:hotel_booking/widgets/list_history_booking.dart';
import 'package:hotel_booking/widgets/recommend_item.dart';
import 'package:hotel_booking/widgets/search_item.dart';

import '../theme/color.dart';
import '../utils/ModelHotel.dart';
import '../utils/data.dart';
import 'booking_coming_hotel.dart';
import 'city_item.dart';
import 'custom_image.dart';

class HistoryBooking extends StatelessWidget {
  HistoryBooking({Key? key, required this.modelBooking, required this.modellist}) : super(key: key);
  ModelBooking modelBooking;
  List<ModelBooking> modellist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        // đặt chiều rộng của container bằng vô cực để nó tràn đầy màn hình
        height: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 5, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Booking',
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Text('Comming',style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
            getBookingComing(),
            SizedBox(
              height: 10,
            ),
            Text("History book",style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
            getHistoryBookign(),
          ],
        ),
      ),
    );
  }

  getBookingComing() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          modellist.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: BookingComingItem(
              modelBooking: modellist[index],
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }

  getHistoryBookign(){
    List<ModelHotel> modelHotel1 = List.from(modelHotel);
    return Container(
      height: 570,
      child: SingleChildScrollView(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: modelHotel1.length,
            itemBuilder: (context, index) {
              return ListHistoryBook(
                modelHotel: modelHotel1[index],
                //data: features[index],
                index: index,
              );
            }),
      ),
    );
  }
}
