// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unnecessary_this

import 'package:flutter/material.dart';
import 'package:proyect_first/pages/second_page.dart';
import 'package:proyect_first/pages/third_page.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  late String nameValue;
  late String lastNameValue;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del Navigator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nombre:"),
                controller: nameTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Apellido:"),
                controller: lastNameTextController,
              ),
              RaisedButton(
                child: Text("Mostrar segunda pantalla"),
                onPressed: (){
                _showSecondPage(context);
               },
              ),
              Form(
                key: formKey,
                child: 
                  Column(
                     children: <Widget>[
                      TextFormField(
                      decoration: InputDecoration(labelText: "Numero de telefono:"),
                      keyboardType: TextInputType.phone,
                      onSaved: (value){
                        nameValue = value!;
                      },
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Llene este campo";
                        }
                      }
                      ),
                      TextFormField(
                      decoration: InputDecoration(labelText: "Fecha:"),
                      keyboardType: TextInputType.datetime,
                      onSaved: (value){
                        lastNameValue = value!;
                      },
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Llene este campo";
                        }
                      }
                      ),
                      RaisedButton(
                        child: Text("Mostrar tercera pantalla"),
                        onPressed: (){
                        _showThirdPage(context);
                        },
                      ),
                    ],  
                  )
              ),
              RaisedButton(
                child: Text("Mostrar cuarta pantalla"),
                onPressed: (){
                _showFourthPage(context);
               },
              ),
              RaisedButton(
                child: Text("Mostrar quinta pantalla"),
                onPressed: (){
                _showFifthPage(context);
               },
              ),
              RaisedButton(
                child: Text("Mostrar sexta pantalla"),
                onPressed: (){
                _showSixthPage(context);
               },
              ),
              RaisedButton(
                child: Text("Mostrar septima pantalla"),
                onPressed: (){
                _showSeventhPage(context);
               },
              ),
              RaisedButton(
                child: Text("Mostrar octava pantalla"),
                onPressed: (){
                _showEigthPage(context);
               },
              ),
              Container(
                height: 800,
                width: 20,
                color: Colors.black,
              )
            ] 
          ),
        )
      )
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("ksecond",
     arguments: SecondPageArguments( 
       name: nameTextController.text,
       lastName: lastNameTextController.text)
    );
  }

  void _showThirdPage(BuildContext context) {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
    }
    Navigator.of(context).pushNamed("kthird",
    arguments: ThirdPageArguments(
      name: this.nameValue, 
      lastName: this.lastNameValue
      )
    );
  }

  void _showFourthPage(BuildContext context) {
    Navigator.of(context).pushNamed("kfourth"
    );
  }

  void _showFifthPage(BuildContext context) {
    Navigator.of(context).pushNamed("kfifth"
    );
  }

  void _showSixthPage(BuildContext context) {
    Navigator.of(context).pushNamed("ksixth"
    );
  }

  void _showSeventhPage(BuildContext context) {
    Navigator.of(context).pushNamed("kseventh"
    );
  }

  void _showEigthPage(BuildContext context) {
    Navigator.of(context).pushNamed("keight"
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
    nameValue = "";
    lastNameValue = "";
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}