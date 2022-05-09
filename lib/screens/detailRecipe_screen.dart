// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/RecipeImages.dart';
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

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(top: 10),
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
            )
          ],
        ),
      ),
    );
  }
}
