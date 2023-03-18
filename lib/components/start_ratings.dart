import 'package:flutter/material.dart';

class StartRatings extends StatefulWidget {
  final int ratings;
  const StartRatings({super.key, required this.ratings});

  @override
  State<StartRatings> createState() => _StartRatingsState();
}

class _StartRatingsState extends State<StartRatings> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            widget.ratings,
            (index) => const Icon(
                  Icons.star,
                  color: Colors.yellow,
                )));
  }
}
