import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2021/09/02/10/36/lighthouse-6593162_1280.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
              child: Column(
            children: [
              Spacer(),
              Center(
                child: Text(
                  'サッカークイズを始めよう！',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "名前を入力してください",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: "名前",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ))
        ],
      ),
    );
  }
}
