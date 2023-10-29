import 'dart:io';
import 'dart:math';

import 'package:cartao/card_animation.dart';
import 'package:flutter/material.dart';
import 'package:cartao/credit_card_back.dart';
import 'package:cartao/credit_card_front.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  late Animation<double> _frontAnimation;
  late Animation<double> _backAnimation;
  bool isFrontVisible = true;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _setupAnimation();
  }

  void _setupAnimation() {

    bool rotateToLeft = isFrontVisible;

    _frontAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(
          begin: 0.0,
          end: rotateToLeft ? (pi/2): (-pi/2),
        ).chain(CurveTween(curve: Curves.linear)),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: ConstantTween<double>(rotateToLeft ? (-pi/2): (pi/2)),
        weight: 50,
      ),
    ]).animate(_controller);

    _backAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: ConstantTween<double>(
          rotateToLeft ? (pi/2): (-pi/2),
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: rotateToLeft ? (-pi/2): (pi/2),
          end: 0
        ).chain(CurveTween(curve: Curves.linear)),
        weight: 50,
      ),
    ]).animate(_controller);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CardAnimation(
                  animation: _backAnimation,
                  child: const CreditCardBack()
                  ),
                CardAnimation(
                  animation: _frontAnimation,
                  child: const CreditCardFront()
                  ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if(isFrontVisible){
                    _controller.forward();
                    isFrontVisible = false;
                  }else {
                    _controller.reverse();
                    isFrontVisible = true;
                  }
                });
              },
              child: Text('Virar'),
            ),
          ], 
        ),
      ),
    );
  }
}
