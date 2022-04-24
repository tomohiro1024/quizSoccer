import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.skip_next,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }

  Stack Body() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/06/10/17/33/football-1448554_1280.png'),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
