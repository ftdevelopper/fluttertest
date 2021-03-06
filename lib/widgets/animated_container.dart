// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _height = 100.0;
  double _width = 100.0;

  _increaseWidth(){
    setState((){
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
       children: <Widget>[
         AnimatedContainer(
           duration: Duration(milliseconds: 500),
           curve: Curves.elasticOut,
           height: _height,
           width: _width,
           color: Colors.amber,
           child: FlatButton(
             child: Text('Tap to\nGrow Width\n$_width'),
             onPressed: (){
               _increaseWidth();
             },
           ),
         ),
       ],
    );
  }
}