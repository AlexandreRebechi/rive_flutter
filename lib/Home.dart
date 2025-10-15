import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("Flutter + Rive", 
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
            width: 100,
            // acessa a animacão do coração
            child: RiveAnimation.asset("assets/rive/anim_heart.riv"),
          )

        ],
        
      ),
    );
  }
}
