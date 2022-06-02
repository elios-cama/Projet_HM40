// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniprojethm40/screens/detailRecipe_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image1.jpeg",
            title: "Brioche",
            note: "4.6/5",
            avis: "10000 avis",
          ),
        ],
      ),
    );
  }
}
class RecommandsEntre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/image2.jpg",
            title: "Salade",
            note: "4.6/5",
            avis: "10000 avis",
          ),
        ],
      ),
    );
  }
}
class RecommandsRepas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/diner.jpeg",
            title: "Jardiere",
            note: "4.6/5",
            avis: "10000 avis",
          ),
        ],
      ),
    );
  }
}

class Recomendrecipe extends StatelessWidget {
  final String image, title, note, avis;

  const Recomendrecipe(
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
      width: size.width * 0.4,

      //height: size.height * 0.1,
      child: GestureDetector(
        onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => DetailRecipeScreen() ));
          },
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
            Container(
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
                            style: TextStyle(color: Colors.grey.shade900, overflow: TextOverflow.ellipsis)
                           ),
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
            )
          ],
        ),
      ),
    );
  }
}

