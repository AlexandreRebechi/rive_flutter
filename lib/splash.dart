import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_flutter/Home.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  String? _anim = "spin1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            // modifica a animacão das engrenagens
            setState(() {
              if(_anim == 'spin1') {
                _anim = 'spin2';
              } else {
                _anim = "spin1";
              }
            });
          },
          child: SizedBox(
            width: 150,
            height: 150,
            // acessa a animacão das engrenagens
            child: RiveAnimation.asset("assets/rive/anim_gears.riv", animations: [_anim!],),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home())
      );
    });
  }
}