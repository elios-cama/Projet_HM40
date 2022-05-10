

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/constants.dart';

class Step6 extends StatelessWidget {
  const Step6({Key? key}) : super(key: key);

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
        "ETAPE 6",
        style: TextStyle(color: kPrimaryColor),
      )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text("Pas d'ingrédients à cette étape")
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(width: size.width *0.9,color: Colors.grey.shade300,height: 2,),
            ),
            Text("Repliez chaque quart l'un sur l'autre dans le sens des aiguilles d'une montre (voir la vidéo).")
          ],
        ),
      ),
    );
  }
}