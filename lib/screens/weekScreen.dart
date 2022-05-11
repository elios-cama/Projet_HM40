// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/components/WeekRecipe.dart';
import 'package:miniprojethm40/constants.dart';

class WeekScreen extends StatefulWidget {
  const WeekScreen({Key? key}) : super(key: key);

  @override
  State<WeekScreen> createState() => _WeekScreenState();
}

class _WeekScreenState extends State<WeekScreen> {
  
  List weekRecipes = [
      Text("Lundi"),
      WeekRecipe(
          
          image:
              "https://assets.afcdn.com/recipe/20160926/21372_w320h320c1cx2752cy2000.webp",
          note: "4.9",
          description: "Tortillas (wraps) estivales",
          day: 11),
      WeekRecipe(
          
          image:
              "https://assets.afcdn.com/recipe/20160926/21372_w320h320c1cx2752cy2000.webp",
          note: "4.9",
          description: "Tortillas (wraps) estivales",
          day: 11),
      Text("Mardi"),
      WeekRecipe(
          
          image:
              "https://assets.afcdn.com/recipe/20160926/21372_w320h320c1cx2752cy2000.webp",
          note: "4.9",
          description: "Tortillas (wraps) estivales",
          day: 11),
      WeekRecipe(
        
          image:
              "https://assets.afcdn.com/recipe/20160926/21372_w320h320c1cx2752cy2000.webp",
          note: "4.9",
          description: "Tortillas (wraps) estivales",
          day: 11),
      Text("Mercredi"),
      WeekRecipe(
          
          image:
              "https://assets.afcdn.com/recipe/20160926/21372_w320h320c1cx2752cy2000.webp",
          note: "4.9",
          description: "Tortillas (wraps) estivales",
          day: 11)
    ];
  @override
  Widget build(BuildContext context) {
   
    
     Size size = MediaQuery.of(context).size;
    
     
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MA SEMAINE",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: weekRecipes.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: Container(color: primaryRedColor, ),
                    key: UniqueKey(), 
                    direction: DismissDirection.endToStart,
                    onDismissed: (_) {
                setState(() {
                  weekRecipes.removeAt(index);
                });
              },
                    child: weekRecipes[index]
                    );
                },
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (builder) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                                  color: Colors.white
                            ),
                            width: size.width,
                            height: size.height * 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Ajouter une Recette",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: kPrimaryColor,
                                      ),
                                      Text("  Depuis mon carnet"),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    height: 1,
                                    width: size.width * 0.9,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.search,
                                        color: kPrimaryColor,
                                      ),
                                      Text("  Lancer une recherche"),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
                                )
                              ],
                            ));
                      });
                },
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  elevation: 2,
                  child: Container(
                    width: size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: kPrimaryColor,
                          ),
                          Text("Ajouter une recette",
                              style: TextStyle(color: kPrimaryColor))
                        ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
