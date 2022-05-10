

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/constants.dart';

class Step3 extends StatelessWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          actions: [GestureDetector(
            onTap: (() {
                  Navigator.pop(context);
                }),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.close, color: Colors.black,),
            ),
          )],
          title: Text(
        "ETAPE 3",
        style: TextStyle(color: kPrimaryColor),
      )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20220126/128066_w128h128c1cx1140cy1140cxb2280cyb2280.webp", texte: "3"),
              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67687_w128h128c1cx350cy350.webp", texte: ""),
              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67563_w128h128c1cx350cy350.webp", texte: ""),
              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67581_w128h128c1cx261cy261.webp", texte: ""),
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(width: size.width *0.9,color: Colors.grey.shade300,height: 2,),
            ),
            Text("Cassez les oeufs dans un bol. Salez et poivrez. Ajoutez un peu de piments (facultatif). Battez le mélange.")
          ],
        ),
      ),
    );
  }
}