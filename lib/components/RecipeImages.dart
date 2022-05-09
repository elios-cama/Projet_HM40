import 'package:flutter/material.dart';

class RecipeImageCard extends StatelessWidget {
  final String image;

  const RecipeImageCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width /4.6,
      height: size.height /10,
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  image,
                ),
      ),
    );
  }
}