import 'package:flutter/material.dart';

class AnimatedOlympicWidget extends StatefulWidget {
  AnimatedOlympicWidget({Key? key}) : super(key: key);

  @override
  _AnimatedOlympicWidgetState createState() => _AnimatedOlympicWidgetState();
}

class _AnimatedOlympicWidgetState extends State<AnimatedOlympicWidget> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGrowSize;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 4), vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose;
  }
  @override

  Widget build(BuildContext context) {
    double _olympicHeight = MediaQuery.of(context).size.height / 2;
    double _olympicWidth = MediaQuery.of(context).size.height / 3;
    double _olympicBottomLocation = MediaQuery.of(context).size.height - _olympicHeight;

    _animationFloatUp = Tween(begin: _olympicBottomLocation, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn)
      ),
    );

    _animationGrowSize = Tween(begin: 50.0, end: _olympicWidth).animate(
      CurvedAnimation(
        parent: _controller,
       curve: Interval(0.0, 0.5, curve: Curves.elasticInOut),
      )
    );

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
           if(_controller.isCompleted){
             _controller.reverse();
           } else {
             _controller.forward();
           }
         },
         child: Image.asset('assets/Olympic.png',
         height: _olympicHeight,
         width: _olympicWidth,
         )
       ),
    );
  }
}