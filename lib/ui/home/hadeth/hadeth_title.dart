import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        hadeth.title,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
