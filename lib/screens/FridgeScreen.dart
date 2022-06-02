// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/components/RecipeRow.dart';
import 'package:miniprojethm40/constants.dart';

class FridgeScreen extends StatelessWidget {
  const FridgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            "MON FRIGO",
            style: TextStyle(
                color: kPrimaryColor, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 10.0),
            child: Text("Légumes", style: TextStyle(fontWeight : FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67489_w128h128c1cx350cy350.webp",
                  texte: "2 poireaux",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67739_w128h128c1cx350cy350.webp",
                  texte: "400g champignons",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67437_w128h128c1cx350cy262.webp",
                  texte: "700g courgette",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20210120/117459_w128h128c1cx866cy866cxb1732cyb1732.webp",
                  texte: "haricots",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 10.0),
            child: Text("Viande", style: TextStyle(fontWeight : FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67539_w128h128c1cx350cy350.webp",
                  texte: "1 chorizo",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67734_w128h128c1cx350cy350.webp",
                  texte: "400g dinde",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67515_w128h128c1cx350cy350.webp",
                  texte: "700g boeuf",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67383_w128h128c1cx350cy350.webp",
                  texte: "1 paquet lardons",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 10.0),
            child: Text("Laitage", style: TextStyle(fontWeight : FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              children: [
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67473_w320h320c1cx350cy350.webp",
                  texte: "12 yaourts",
                ),
                IngredientCard(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170607/67388_w128h128c1cx350cy350.webp",
                  texte: "1 bouteille",
                ),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 10.0),
            child: Text("Suggestions de plats", style: TextStyle(fontWeight : FontWeight.bold),),
            
          ),
          SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Recomendrecipe(
            image: "lib/assets/harictos.jpeg",
            title: "Haricots",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          Recomendrecipe(
            image: "lib/assets/blanquette.jpeg",
            title: "Dinde",
            note: "4.6/5",
            avis: "10000 avis",
          ),
          
        ],
      ),
    ),
        ]),
      ),
    );
  }
}
