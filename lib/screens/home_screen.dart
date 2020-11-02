import 'package:flutter/material.dart';
import 'package:memory/widgets/list_cards.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              // color: Colors.yellow,
              height: constraints.maxHeight * 0.65,
              child: DiaryList(),
            ),
          );
        },
      ),
    );
  }
}
