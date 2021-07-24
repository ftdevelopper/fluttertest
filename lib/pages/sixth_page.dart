// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SixthPage extends StatefulWidget {
  SixthPage({Key? key}) : super(key: key);

  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  final Order _order = Order();

  String? _validateItemRequired(String value) {
    return value.isEmpty ? 'Item Required' : null;
  }

  String? _validateItemCount(String value){
    int? _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }

  _sumbitOrder(){
    if(_formStateKey.currentState!.validate()){
      _formStateKey.currentState!.save();
      print('Order Item: ${_order.item}');
      print('Order Quality: ${_order.quantity}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sexta Pagina"),
      ),
      body:SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              autovalidate: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Espresso',
                        labelText: 'Item',
                      ),
                      validator: (value) => _validateItemRequired(value!),
                      onSaved: (value) => _order.item = value!,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '3',
                        labelText: 'Quantity',
                      ),
                      validator: (value) => _validateItemCount(value!),
                      onSaved: (value) => _order.quantity = int.parse(value!),
                    ),
                    Divider(height: 32.0),
                    RaisedButton(
                      child: Text('Saved'),
                      color: Colors.lightGreen,
                      onPressed: () => _sumbitOrder(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  late String item;
  late int quantity;
}