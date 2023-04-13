import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/ModelHotel.dart';
import 'package:hotel_booking/utils/data.dart';
import 'package:hotel_booking/widgets/detail_item.dart';

import '../theme/color.dart';
import 'custom_image.dart';
import 'favorite_box.dart';

class SearchItem extends StatelessWidget {
  SearchItem(
      {Key? key,
      //required this.data,
      required this.modelHotel,
      this.width = 300,
      this.height = 280,
      this.onTap,
      this.onTapFavorite,
      required this.index})
      : super(key: key);
  //final data;
  final ModelHotel modelHotel;
  final double width;
  final double height;
  final GestureTapCallback? onTapFavorite;
  final GestureTapCallback? onTap;
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailItem(modelHotel: modelHotel) ),
        )
      },
      child: Container(
        width: width,
        // height: height,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 5, top: 5),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              modelHotel.image,
              width: double.infinity,
              height: 190,
              radius: 15,
            ),
            /* Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  ],
                ))*/
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    modelHotel.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          modelHotel.type,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: labelColor, fontSize: 13),
                        ),
                        Text(
                          modelHotel.price + "/night",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/data.dart';

import '../theme/color.dart';
import 'custom_image.dart';
import 'favorite_box.dart';

class SearchItem extends StatelessWidget {
  SearchItem(
      {Key? key,
      required this.data,
      this.width = 300,
      this.height = 280,
      this.onTap,
      this.onTapFavorite})
      : super(key: key);
  final data;
  final double width;
  final double height;
  final GestureTapCallback? onTapFavorite;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        // height: height,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 5, top: 5),
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
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            /*ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Image.network(
                  data["image"],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),*/
            CustomImage(
              data["image"],
              width: double.infinity,
              height: 190,
              radius: 15,
            ),
            Container(
              width: width - 20,
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["name"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data["type"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: labelColor, fontSize: 13),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            data["price"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: primary,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      FavoriteBox(
                        size: 16,
                        onTap: onTapFavorite,
                        isFavorited: data["is_favorited"],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

* */
