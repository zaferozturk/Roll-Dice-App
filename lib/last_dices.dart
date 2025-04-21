import 'package:flutter/material.dart';

class LastDices extends StatelessWidget {
  final List<String> diceImages;

  const LastDices({super.key, required this.diceImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        alignment: WrapAlignment.start,
        children:
            diceImages
                .map((image) => Image.asset(image, width: 75, height: 75))
                .toList(),
      ),
    );
  }
}
