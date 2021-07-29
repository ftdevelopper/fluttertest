import 'package:flutter/material.dart';

class DragAndDropPage extends StatefulWidget {
  DragAndDropPage({Key? key}) : super(key: key);

  @override
  _DragAndDropPageState createState() => _DragAndDropPageState();
}

class _DragAndDropPageState extends State<DragAndDropPage> {
  late String _gestureDetected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildGestureDetector(),
              Divider(
                color: Colors.black,
                height: 44.0,
              ),

              Divider(height: 40.0),

              Divider(color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildGestureDetector(){
    return GestureDetector(
      onTap: (){
        print('onTap');
        _displayGestureDetected('onTap');
      },
      onDoubleTap: (){
        print('onDoubleTap');
        _displayGestureDetected('onDoubleTap');
      },
      onLongPress: (){
        print('onLongPress');
        _displayGestureDetected('onLongPress');
      },
      onPanUpdate: (DragUpdateDetails details){
        print('inPanUpdate: $details');
        _displayGestureDetected('onPanUpdate: \n$details');
      },
      child: Container(
        color: Colors.lightGreen.shade100,
        width: double.infinity,
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.access_alarm,
              size: 98.0,
              ),
            Text('$_gestureDetected'),
          ],
        ),
      ),
    );
  }

  @override
  void initState() { 
    super.initState();
    _gestureDetected = "";
  }

  @override
  void dispose() {
    super.dispose();

  }

  void _displayGestureDetected(String gesture){
    setState((){
      _gestureDetected = gesture;
    });
  }
}