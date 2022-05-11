// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniprojethm40/components/RecipeRow.dart';
import 'package:miniprojethm40/components/bigcards.dart';
import 'package:miniprojethm40/components/categories.dart';
import 'package:miniprojethm40/constants.dart';
import 'package:miniprojethm40/size_config.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({ Key? key }) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10, left: 20, 
            ),
            child: Text('Top Recettes', style:GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 30),),
          ),
          RecommandsBigCardsExample(),
          Padding(
            padding: const EdgeInsets.only(
              top: 10, left: 20, 
            ),
            child: Text("Idée pour l'apéro", style:GoogleFonts.lato(fontWeight: FontWeight.bold),),
          ),
          RecommandsEntre(),
          Padding(
            padding: const EdgeInsets.only(
              top: 10, left: 20, 
            ),
            child: Text('Idée de dîner', style:GoogleFonts.lato(fontWeight: FontWeight.bold),),
          ),
          RecommandsRepas(),
          Padding(
            padding: const EdgeInsets.only(
              top: 10, left: 20, 
            ),
            child: Text('Idée de dessert', style:GoogleFonts.lato(fontWeight: FontWeight.bold),),
          ),
          RecomendsPlants(),
          
    
        ],
        
      ),
    );
  }
}