// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/components/RecipeImages.dart';
import 'package:miniprojethm40/constants.dart';
import 'package:miniprojethm40/screens/steps/Step_vocal_screen.dart';
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
  bool cheddar = true;
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67581_w128h128c1cx261cy261.webp",
                                texte: "piment",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67687_w128h128c1cx350cy350.webp",
                                texte: "sel",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20220114/127365_w128h128c1cx411cy411cxb822cyb822.webp",
                                texte: "huile d'olive",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67563_w128h128c1cx350cy350.webp",
                                texte: "poivre",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67727_w128h128c1cx350cy350.webp",
                                texte: " $nbPeople tortilla",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67382_w128h128c1cx350cy350.webp",
                                texte: " ${(nbPeople ~/ 2)} avocat",
                              ),
                              GestureDetector(
                                  onDoubleTap: () {
                                    cheddar = !cheddar;
                                    setState(() {});
                                  },
                                  child: cheddar
                                      ? IngredientCard(
                                          size: size,
                                          image:
                                              "https://assets.afcdn.com/recipe/20170607/67544_w128h128c1cx350cy350.webp",
                                          texte: "${nbPeople * 25}g cheddar",
                                        )
                                      : IngredientCard(
                                          size: size,
                                          image:
                                              "https://assets.afcdn.com/recipe/20170607/67601_w128h128c1cx350cy350.webp",
                                          texte: "${nbPeople * 25}g emmental",
                                        )),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20170607/67488_w128h128c1cx350cy350.webp",
                                texte: "${nbPeople ~/ 2} oignons",
                              ),
                              IngredientCard(
                                size: size,
                                image:
                                    "https://assets.afcdn.com/recipe/20220126/128066_w128h128c1cx1140cy1140cxb2280cyb2280.webp",
                                texte: "${(nbPeople * 1.5).toInt()} oeufs",
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 8),
                          child: Text(
                            "S'il vous manque des ingrédients cliquez deux fois sur l'image en question",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GridView.count(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 3,
                      children: [
                        IngredientCard(
                          size: size,
                          image:
                              "https://assets.afcdn.com/recipe/20200330/109361_w320h160c1cx749cy374cxb1498cyb748.webp",
                          texte: "1 poele",
                        ),
                        IngredientCard(
                          size: size,
                          image:
                              "https://assets.afcdn.com/recipe/20181016/82711_w320h374c1cx641cy750cxb1283cyb1500.webp",
                          texte: "1 bol",
                        ),
                        IngredientCard(
                          size: size,
                          image:
                              "https://assets.afcdn.com/recipe/20170613/68878_w320h320c1cx350cy350.webp",
                          texte: "1 fourchette",
                        ),
                      ],
                    ),
                  ),
            Material(
              color: Colors.white,
              elevation: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                width: size.width,
                height: size.height / 15,
                child: Center(
                    child: Text(
                  "Préparation",
                  style: TextStyle(color: kPrimaryColor, fontSize: 20),
                )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Temps total : "),
                      Text(
                        "19 min",
                        style: TextStyle(color: Colors.grey.shade800),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.grey.shade500,
                    height: 1,
                    width: size.width * 0.7,
                    margin: EdgeInsets.symmetric(vertical: 6),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Préparation :"),
                          Text(
                            "15 min",
                            style: TextStyle(color: Colors.grey.shade800),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Repos :"),
                          Text(
                            " - min",
                            style: TextStyle(color: Colors.grey.shade800),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Cuisson :"),
                          Text(
                            "4 min",
                            style: TextStyle(color: Colors.grey.shade800),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PageViewDemo())));
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.soup_kitchen_outlined,
                            color: kPrimaryColor,
                          ),
                          Text("   Assistant vocal",
                              style: TextStyle(color: kPrimaryColor))
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 650,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Step(
                          number: 1,
                          details:
                              "Coupez l'avocat et écrasez-le à l'aide d'une\nfourchette."),
                      Step(
                          number: 2,
                          details: "Coupez l'oignon rouge en fines lamelles."),
                      Step(
                          number: 3,
                          details:
                              "Cassez les oeufs dans un bol. Salez et poivrez.\nAjoutez un peu de piments (facultatif). \nBattez le mélange."),
                      Step(
                          number: 4,
                          details:
                              "Dans un poêle, faites chauffer un peu d'huile.\nVersez les oeufs et remuez pendant\nquelques minutes jusqu'à ce que les\noeufs soient cuits."),
                      Step(
                          number: 5,
                          details:
                              "Coupez la tortilla en vous arrêtant au milieu.\nDéposez sur chaque quart une portion d'avocat,\nd'oeufs brouillés, cheddar et oignons rouge."),
                      Step(
                          number: 6,
                          details:
                              "Repliez chaque quart l'un sur l'autre dans le \nsens des aiguilles d'une montre (voir la vidéo)."),
                      Step(
                          number: 7,
                          details:
                              "Faites cuire la tortilla à la poêle avec un peu d'huile,\n environ deux minutes de chaque côté."),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Commentaires (2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Column(children: [
              Commentaires_widget(),
              Commentaires_widget(),
              Commentaires_widget(),
              Commentaires_widget(),
              Commentaires_widget(),
              Commentaires_widget(),
            ],)
            
          ],
        ),
      ),
    );
  }
}

class Commentaires_widget extends StatelessWidget {
  const Commentaires_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: primaryRedColor,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                        child: Text(
                          "C",
                          style: TextStyle(
                              color: kPrimaryColor, fontSize: 30),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" cuisinierdu90"),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFFFF6F61),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFFFF6F61),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFFFF6F61),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFFFF6F61),
                                size: 20,
                              ),
                              Icon(
                                Icons.star_outline,
                                color: Color(0xFFFF6F61),
                                size: 20,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              "4,1/5",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
              Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.grey,
                  )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("27/09/2021 à 16:01", style: TextStyle(color: Colors.grey, fontSize: 12),),
            Text("Super bon, rien à ajouter, parfait pour petits et grands", )
          ]
          ),
        ],
      ),
    );
  }
}

class Step extends StatelessWidget {
  const Step({
    Key? key,
    required this.number,
    required this.details,
  }) : super(key: key);
  final int number;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8),
          margin: EdgeInsets.only(bottom: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "ETAPE $number",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(details, style: TextStyle(color: Colors.grey.shade700))
          ]),
        )
      ],
    );
  }
}
