import 'package:flutter/material.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    Key? key,
    required this.size, required this.image, required this.texte, 
  }) : super(key: key);

  final Size size;
  final String image;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(2),
          width: size.width / 4.6,
          height: size.height / 10,
          decoration: BoxDecoration(borderRadius:  BorderRadius.circular(14),),
         
          child: Material(
            borderRadius: BorderRadius.circular(14),
            elevation: 2,
            child: ClipRRect(
              
              child: Image.network(image),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        Text(texte)
      ],
    );
  }
}
class SearchCategory extends StatelessWidget {
  const SearchCategory({ Key? key, required this.size, required this.image,required  this.texte }) : super(key: key);
  final Size size;
  final String image;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
          
          width: 180,
          height: 180,
          decoration: BoxDecoration(borderRadius:  BorderRadius.circular(14),color: Colors.white),
          margin : EdgeInsets.all(15),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            elevation: 2,
            child: ClipRRect(
              
              child: Image.network(image),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        Center(child: Text(texte, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, ),))
      ],
    );
  }
}