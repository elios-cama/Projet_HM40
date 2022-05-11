

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';class WeekRecipe extends StatelessWidget {
  const WeekRecipe({
    Key? key,
     required this.image,required this.note,required this.description, required this.day,
  }) : super(key: key);

  
  final String image;
  final String note;
  final String description;
  final int day;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(children: [
            IngredientCard(size: size, image: image, texte: ""),
            Padding(

              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(description),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFF6F61),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFFF6F61),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFFF6F61),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFFF6F61),
                          ),
                          Icon(
                            Icons.star_outline,
                            color: Color(0xFFFF6F61),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "$note/5",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Text("mercredi $day mai", style: TextStyle(color: Colors.grey.shade400),)
                ],
              ),
            )
          ]),
          Container(color: Colors.grey.shade300,height: 1,width:size.width,)
        ],
      ),
    );
  }
}
