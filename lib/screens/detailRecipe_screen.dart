// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/components/RecipeImages.dart';
import 'package:miniprojethm40/constants.dart';
import 'package:video_player/video_player.dart';

class DetailRecipeScreen extends StatefulWidget {
  const DetailRecipeScreen({Key? key}) : super(key: key);

  @override
  State<DetailRecipeScreen> createState() => _DetailRecipeScreenState();
}

class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
  late VideoPlayerController _controller;
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://assets.afcdn.com/video13/20140809/v502925_15661_2_HD.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  bool ingredient = true;
  int nbPeople = 2;
  void addPeople() {
    nbPeople += 1;
  }

  void removePeople() {
    nbPeople -= 1;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Wrap de tortilla\n à l'avocat, cheddar et\n oeufs brouillés",
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          "4,1/5",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.textsms_outlined,
                        color: Colors.grey,
                      ),
                      Text("11 commentaires",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ))
                    ],
                  )
                ],
              ),
            ),
            _controller.value.isInitialized
                ? Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  )
                : Container(),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecipeImageCard(image: 'lib/assets/tortilla1.jpeg'),
                      RecipeImageCard(image: 'lib/assets/tortilla2.jpeg'),
                      RecipeImageCard(image: 'lib/assets/tortilla3.jpeg'),
                      RecipeImageCard(image: 'lib/assets/tortilla4.jpeg'),
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: size.height / 13.5,
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_calendar),
                        Text(" Ma semaine")
                      ],
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      width: 1.5,
                      height: size.height / 14.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: kPrimaryColor,
                        ),
                        Text(
                          " Mon carnet",
                          style: TextStyle(color: kPrimaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width * 0.9,
              height: 2,
              color: Colors.grey.shade300,
              margin: EdgeInsets.symmetric(vertical: 15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.timer_outlined),
                  Text("19 min"),
                  Text("•"),
                  Icon(Icons.lunch_dining_outlined),
                  Text("194kcal/portion"),
                  Text("•"),
                  Icon(Icons.paid_outlined),
                  Text("1.96€/portion"),
                ],
              ),
            ),
            Container(
              height: size.height / 17,
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ingredient = true;
                            print(ingredient);
                          });
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "Ingrédients",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ingredient ? kPrimaryColor : Colors.grey,
                                fontSize: 18),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                ingredient ? Colors.white : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ingredient = false;
                            print(ingredient);
                          });
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "Ustensiles",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ingredient ? Colors.grey : kPrimaryColor,
                                fontSize: 18),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ingredient
                                  ? Colors.transparent
                                  : Colors.white),
                        ),
                      ),
                    )
                  ]),
            ),
            ingredient
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width / 2.5,
                          height: size.height / 17,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  child: Icon(Icons.remove),
                                  onTap: () {
                                    if (nbPeople > 1) {
                                      removePeople();
                                      setState(() {});
                                    }
                                  }),
                              Text("$nbPeople Tortillas"),
                              GestureDetector(
                                  child: Icon(Icons.add),
                                  onTap: () {
                                    addPeople();
                                    setState(() {});
                                  })
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: GridView.count(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 3,
                            children: [
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67581_w128h128c1cx261cy261.webp", texte: "piment",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67687_w128h128c1cx350cy350.webp", texte: "sel",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20220114/127365_w128h128c1cx411cy411cxb822cyb822.webp", texte: "huile d'olive",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67563_w128h128c1cx350cy350.webp", texte: "poivre",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67727_w128h128c1cx350cy350.webp", texte: "tortilla",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67382_w128h128c1cx350cy350.webp", texte: "avocat",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67544_w128h128c1cx350cy350.webp", texte: "cheddar",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20170607/67488_w128h128c1cx350cy350.webp", texte: "oignon",),
                              IngredientCard(size: size, image: "https://assets.afcdn.com/recipe/20220126/128066_w128h128c1cx1140cy1140cxb2280cyb2280.webp", texte: "oeufs",),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  )
          ],
        ),
      ),
    );
  }
}

