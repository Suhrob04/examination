import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       
        children: [
          PageView(
            children: [
              Column(
                children: [
                  
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}