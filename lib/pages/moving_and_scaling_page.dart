import 'package:flutter/material.dart';

class GesturesScalePage extends StatefulWidget {
  GesturesScalePage({Key? key}) : super(key: key);

  @override
  _GesturesScalePageState createState() => _GesturesScalePageState();
}

class _GesturesScalePageState extends State<GesturesScalePage> {
  Offset _startLastOffset = Offset.zero;
  Offset _lastOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  double _lastScale = 1.0;
  double _currentScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Gestures and Scale'),
         centerTitle: true,
       ),
       body: _buildBody(context),
    );
  }

  _buildBody(context){
    return GestureDetector(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _transformScaleAndTranslate(),
          //_trnasformMatrix4(),
          _positionedStatusBar(context),
        ],
      ),
      onScaleStart: _onScaleStart,
      onScaleUpdate: _onScaleUpdate,
      onDoubleTap: _onDoubleTap,
      onLongPress: _onLongPress,
    );
  }

  Transform _transformScaleAndTranslate(){
    return Transform.scale(
      scale: _currentScale,
      child: Transform.translate(
        offset: _currentOffset,
        child: Image(
          image: AssetImage('assets/dawn.jpg'),
        ),
      ),
    );
  }

  // ignore: unused_element
  Transform _transformMatrix4(){
    return Transform(
      transform: Matrix4.identity()
      ..scale(_currentScale, _currentScale)
      ..translate(_currentOffset.dx, _currentOffset.dy),
      alignment: FractionalOffset.center,
      child: Image(
        image: AssetImage('assets/dawn.jpg'),
      ),
    );
  }

  Positioned _positionedStatusBar(BuildContext context){
    return Positioned(
      top: 0.0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.white54,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Scale: ${_currentScale.toStringAsFixed(4)}'),
            Text('Current: $_currentOffset'),
          ],
        ),
      ),
    );
  }

  void _onScaleStart(ScaleStartDetails details){
    print('ScaleStartDetails: $details');

    _startLastOffset = details.focalPoint;
    _lastOffset = _currentOffset;
    _lastScale = _currentScale;
  }

  void _onScaleUpdate(ScaleUpdateDetails details){
    print('ScaleUpdateDetails: $details - Scale: ${details.scale}');

    if (details.scale != 1.0){
      // Scaling
      double currentScale = _lastScale * details.scale;
      if (currentScale < 0.5){
        currentScale =  0.5;
      }
      setState(() {
        _currentScale = currentScale;
      });
      print('_scale: $_currentScale - _lastScale: $_lastScale');
    } else if (details.scale == 1.0){
      //We are not scaling but dragging around screen.
      //Calculate Offset depending on current image scaling.
      Offset offsetAdjustedForScale = (_startLastOffset - _lastOffset) / _lastScale;
      Offset currentOffset = details.focalPoint - (offsetAdjustedForScale * _currentScale);
      setState(() {
        _currentOffset = currentOffset;
      });
      print('offseteAdjustedForScale: $offsetAdjustedForScale - _currentOffset: $_currentOffset ');
    }
  }

  void _onDoubleTap(){
    print('onDoubleTap');

    //Calculate current scale and papulate the _lasr Scale with currentScale
    double currentScale = _lastScale * 2.0;
    if (currentScale >= 16.0){
      currentScale = 1.0;
      _resetToDefaultValues();
    }
    _lastScale = currentScale;

    setState(() {
      _currentScale = currentScale;
    });
  }

  void _onLongPress(){
    print('onLongPress');

    setState(() {
      _currentScale = 1.0;
      _currentOffset = Offset.zero;
      _resetToDefaultValues;
    });
  }

  void _resetToDefaultValues(){
    _startLastOffset = Offset.zero;
    _lastOffset = Offset.zero;
    _currentOffset = Offset.zero;
    _lastScale = 1.0;
    _currentScale = 1.0;
  }
}