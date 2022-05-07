// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniprojethm40/constants.dart';

class RecommandBigCard extends StatelessWidget {
  final String image, title, note, avis;

  const RecommandBigCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.note,
      required this.avis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.5,

      //height: size.height * 0.1,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              image,
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$avis",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\ $note',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class RecommandsBigCardsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          RecommandBigCard(
            image: "lib/assets/image3.jpg",
            title: "Paella",
            note: "4.6/5",
            avis: "10000 avis",
          ),
        ],
      ),
    );
  }
}