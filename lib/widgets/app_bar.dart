import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  String word1;
  String word2;
  CustomAppBar({
    super.key,
    required this.word1,
    required this.word2,
  });

  @override
  Widget build(BuildContext context) {
    return 
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: word1,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: word2,
                  style: const TextStyle(
                       color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ]),
        ]));
      
    
  }
}
