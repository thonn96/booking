import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/ModelBooking.dart';
import 'package:hotel_booking/utils/ModelHotel.dart';
import 'package:hotel_booking/utils/data.dart';
import 'package:hotel_booking/widgets/recommend_item.dart';

import '../theme/color.dart';
import 'booking_screen.dart';
import 'custom_image.dart';

class DetailItem extends StatelessWidget {

  DetailItem({Key? key, required this.modelHotel}) : super(key: key);
  final ModelHotel modelHotel;

   final ButtonStyle flatButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.orange,
    fixedSize: Size(300, 43),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    print("detail: ${MediaQuery.of(context).size.height}");
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              child: getSliderImage()
            ),
             Positioned.fill(
              top: 230,
              child: Container(
                height: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: new Container(
                  color: Colors.transparent,
                  child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 40, left: 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(modelHotel.name,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: textColor,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text(modelHotel.price,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: primary,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0, left: 15),
                                  child: Icon(
                                    Icons.place,
                                    color: Colors.grey,
                                    size: 20.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 0, left: 0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(modelHotel.type),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 0, left: 210),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text("per night"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 0),
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                          semanticLabel:
                                              'Text to announce in accessibility modes',
                                        ),
                                        Text("4.5")
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, left: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("review"),
                                          ),
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.grey,
                                            size: 20.0,
                                            semanticLabel:
                                                'Text to announce in accessibility modes',
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: bottomBarColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: shadowColor.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      offset: Offset(0, 1))
                                ],
                              ),
                              height: 60,
                              width: 350,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 30, left: 25),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "What they offer",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: textColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: getOffer(),
                                  )
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 10, left: 25),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Description",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: textColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    modelHotel.description,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: textColor,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )),
                          SafeArea(
                            bottom: true,
                            child: Container(
                              child: Padding(padding: EdgeInsets.only(top: 60, left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Material(
                                      color: Colors.white,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.greenAccent,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                            icon: const Icon(Icons.call),
                                            color: Colors.white,
                                            onPressed: () {
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: flatButtonStyle,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => BookingScreen(modelBooking: new ModelBooking(modelHotel.price, modelHotel.name, modelHotel.image, modelHotel.type, modelHotel.description, albumImages),modelBookingList: [],) ),
                                        );
                                      },
                                      child: Text('Booking now',style: TextStyle(
                                        color: Colors.white,
                                      )),
                                    ),
                                  ],
                                ),),
                              // widget của bạn ở đây
                            ),
                          )

                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }

  getOffer() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 20, top: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              width: 80,
              height: 80,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [Icon(Icons.wifi), Text("wifi")],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  getSliderImage(){
    return CarouselSlider(
      options: CarouselOptions(height: 300.0),
        items: List.generate(
          albumImages.length,
              (index) =>Image.network(
                modelHotel.album[index],
                fit: BoxFit.fill,
              )
        )
    );
  }
  
}
