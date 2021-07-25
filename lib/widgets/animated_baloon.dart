import 'package:flutter/material.dart';

class AnimatedBalloonWidget extends StatefulWidget {
  AnimatedBalloonWidget({Key? key}) : super(key: key);

  @override
  _AnimatedBalloonWidgetState createState() => _AnimatedBalloonWidgetState();
}

class _AnimatedBalloonWidgetState extends State<AnimatedBalloonWidget> with TickerProviderStateMixin{
  
  late AnimationController _controllerFloatUp;
  late AnimationController _controllerGrowSize;
  late Animation<double> _animationGrowSize;
  late Animation<double> _animationFloatUp;

  @override
  void initState(){
    super.initState();
    _controllerFloatUp = AnimationController(duration: Duration(seconds: 4), vsync: this);
    _controllerGrowSize = AnimationController(duration: Duration(seconds: 4), vsync: this);
  }

  @override
  void dispose(){
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _balloonHeight = MediaQuery.of(context).size.height / 3;
    double _balloonWidth = MediaQuery.of(context).size.height / 2;
    double _balloonBottomLocation = MediaQuery.of(context).size.height - _balloonHeight;

    _animationFloatUp = Tween(begin: _balloonBottomLocation, end: 0.0).animate(CurvedAnimation(parent: _controllerFloatUp, curve: Curves.easeIn));
    _animationGrowSize = Tween(begin: 100.0, end: _balloonWidth).animate(CurvedAnimation(parent: _controllerGrowSize, curve: Curves.easeInCirc));
    _controllerFloatUp.forward();
    _controllerGrowSize.forward();
    return AnimatedBuilder(
      animation: _animationFloatUp,
      builder: (context, child){
        return Container(
          child: child,
          margin: EdgeInsets.only(
            top: _animationFloatUp.value,
          ),
          width: _animationGrowSize.value,
        );
      },
      child: GestureDetector(
        onTap: (){
          if (_controllerFloatUp.isCompleted){
            _controllerFloatUp.reverse();
            _controllerGrowSize.reverse();
          }
          else {
            _controllerFloatUp.forward();
            _controllerGrowSize.forward();
          }
        },
        child: Image.asset(
          'assets/Olympic.png',
          height: _balloonHeight,
          width: _balloonWidth
        ),
      ),
    );
  }
}