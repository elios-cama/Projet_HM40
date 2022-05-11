// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  double _startValue_temps = 0;
  double _endValue_temps = 120;
  double _price = 1;
  double _difficulte = 1;
  double _calories = 10;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Une recette? Une envie?",
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
              onChanged: (value) {
                // do something
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(height: 2,width: size.width *0.4,color: Colors.grey.shade300,),
                Text("OU", style: TextStyle(color: Colors.grey.shade500),),
                 Container(height: 2,width: size.width *0.4,color: Colors.grey.shade300,),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.alarm_outlined),
                  Text(
                    "  Rechercher par temps de préparation ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            RangeSlider(
              min: 0.0,
              max: 120.0,
              divisions: 10,
              labels: RangeLabels(
                _startValue_temps.round().toString(),
                _endValue_temps.round().toString(),
              ),
              values: RangeValues(_startValue_temps, _endValue_temps),
              onChanged: (values) {
                setState(() {
                  _startValue_temps = values.start;
                  _endValue_temps = values.end;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.euro_outlined),
                  Text(
                    "  Rechercher en prix/personne ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Slider(
              min: 1.0,
              max: 50.0,
              value: _price,
              divisions: 10,
              label: '${_price.round()}',
              onChanged: (value) {
                setState(() {
                  _price = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined),
                  Text(
                    "  Rechercher par difficulté ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Slider(
              min: 1,
              max: 5,
              value: _difficulte,
              divisions: 4,
              label: '${_difficulte.round().toInt()}',
              onChanged: (value) {
                setState(() {
                  _difficulte = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.lunch_dining),
                  Text(
                    "  Rechercher par kcal/personnes ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Slider(
              min: 10,
              max: 1000,
              value: _calories,
              divisions: 20,
              label: '${_calories.round().toInt()}',
              onChanged: (value) {
                setState(() {
                  _calories = value;
                });
              },
            ),
            Center(
              child: Container(
                width: size.width*0.6,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor
                ),
                child: TextButton(child: Center(child: Text("Enregistrer", style: TextStyle(color: Colors.white),)), onPressed: (){},),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(height: 2,width: size.width *0.4,color: Colors.grey.shade300,),
                Text("OU", style: TextStyle(color: Colors.grey.shade500),),
                 Container(height: 2,width: size.width *0.4,color: Colors.grey.shade300,),
              ],),
            ),
            GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20161130/59380_w320h320c1cx2808cy1872.webp",
                  texte: "Hiver",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20170112/28965_w320h320c1cx1500cy1000.webp",
                  texte: "Citadin stressé",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20180628/80089_w320h320c1cx1944cy2592cxb3888cyb5184.webp",
                  texte: "Etudiant\nfauché",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20210212/117942_w320h320c1cx1060cy707cxb2121cyb1414.webp",
                  texte: "végétarien",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20180827/81952_w320h320c1cx2144cy1424cxb4288cyb2848.webp",
                  texte: "Les classques",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20100120/55323_w320h320c1cx256cy192.webp",
                  texte: "Automne",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20200519/111389_w320h320c1cx1815cy2900cxb3455cyb5184.webp",
                  texte: "Fromages",
                ),
                SearchCategory(
                  size: size,
                  image:
                      "https://assets.afcdn.com/recipe/20181109/83747_w320h320c1cx2592cy1944cxb5176cyb3884.webp",
                  texte: "Noël",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
