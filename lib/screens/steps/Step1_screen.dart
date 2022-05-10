import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/IngredientCard.dart';
import 'package:miniprojethm40/constants.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: (() {
                  Navigator.pop(context);
                }),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            )
          ],
          title: Text(
            "ETAPE 1",
            style: TextStyle(color: kPrimaryColor),
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IngredientCard(
                    size: size,
                    image:
                        "https://assets.afcdn.com/recipe/20170607/67382_w128h128c1cx350cy350.webp",
                    texte: "3.5")
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: size.width * 0.9,
                color: Colors.grey.shade300,
                height: 2,
              ),
            ),
            Text("Coupez l'avocat et écrasez-le à l'aide d'une fourchette."),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "lib/assets/google.jpeg",
                  height: 200,
                  width: 400,
                ),
              ),
            ),
            Text("Dites 'OK Google' et demandez à votre assistant de vous lire le contenu de la page et de passer à l'étape suivante", textAlign: TextAlign.center,style: TextStyle(color: kPrimaryColor),)
          ],
        ),
      ),
    );
  }
}
