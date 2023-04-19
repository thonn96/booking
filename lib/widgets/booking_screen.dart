import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/ModelBooking.dart';
import 'package:hotel_booking/widgets/history_booking.dart';

import '../theme/color.dart';

class BookingScreen extends StatelessWidget {
   BookingScreen({Key? key, required this.modelBooking, required this.modelBookingList}) : super(key: key);
  ModelBooking modelBooking;
  final ButtonStyle flatButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.orange,
    fixedSize: Size(300, 43),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
   List<ModelBooking> modelBookingList;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 5, top: 5),
        decoration: BoxDecoration(
          color: Colors.white,

        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Booking", style: TextStyle(
                fontSize: 18,
                color: textColor,
                fontWeight: FontWeight.w800)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  cursorColor: Color(0xFF000000),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Color(0xFF000000).withOpacity(0.5),
                      ),
                      hintText: "15-05-2023",
                      border: InputBorder.none),
                ),
              )

            ),
            SizedBox(
              height: 20, // khoảng cách giữa các Container
            ),
            Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Color(0xFF000000),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.date_range,
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                        hintText: "15-05-2023",
                        border: InputBorder.none),
                  ),
                )

            ),
            SizedBox(
              height: 20, // khoảng cách giữa các Container
            ),
            Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Color(0xFF000000),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                        hintText: "Name",
                        border: InputBorder.none),
                  ),
                )

            ),
            SizedBox(
              height: 20, // khoảng cách giữa các Container
            ),
            Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Color(0xFF000000),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                        hintText: "Number Phone",
                        border: InputBorder.none),
                  ),
                )

            ),

            SafeArea(
                bottom: true,
              child:   Container(
                  child:  TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      modelBookingList.add(modelBooking);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => HistoryBooking(modelBooking: modelBooking,modellist: modelBookingList,) ),
                      );
                    },
                    child: Text('Booking now',style: TextStyle(
                      color: Colors.white,
                    )),
                  )
              ),
            )



          ],

        ),
      ),
    );
  }



}
