// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/constants.dart';

class Step7 extends StatelessWidget {
  const Step7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            )
          ],
          title: Text(
            "ETAPE 7",
            style: TextStyle(color: kPrimaryColor),
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IngredientCard(
                    size: size,
                    image:
                        "https://assets.afcdn.com/recipe/20220114/127365_w128h128c1cx411cy411cxb822cyb822.webp",
                    texte: "")
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: size.width * 0.9,
                color: Colors.grey.shade300,
                height: 2,
              ),
            ),
            Text(
                "Faites cuire la tortilla à la poêle avec un peu d'huile, environ deux minutes de chaque côté.")
          ],
        ),
      ),
    );
  }
}
