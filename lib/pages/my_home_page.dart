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
                _quickShowPage(context, "kfourth");
               },
              ),
              RaisedButton(
                child: Text("Mostrar quinta pantalla"),
                onPressed: (){
                _quickShowPage(context, "kfifth");
               },
              ),
              RaisedButton(
                child: Text("Mostrar sexta pantalla"),
                onPressed: (){
                _quickShowPage(context, "ksixth");
               },
              ),
              RaisedButton(
                child: Text("Mostrar septima pantalla"),
                onPressed: (){
                _quickShowPage(context, "kseventh");
               },
              ),
              RaisedButton(
                child: Text("Mostrar octava pantalla"),
                onPressed: (){
                _quickShowPage(context, "keigth");
               },
              ),
              RaisedButton(
                child: Text("Mostrar novena pantalla"),
                onPressed: (){
                _quickShowPage(context, "knineth");
               },
              ),
              RaisedButton(
                child: Text("Mostrar decima pantalla"),
                onPressed: (){
                _quickShowPage(context, "ktenth");
               },
              ),
              GestureDetector(
                child: Hero(
                  tag: 'format_paint',
                  child: Icon(
                    Icons.format_paint,
                    color: Colors.lightGreen,
                    size:80,
                    )
                ),
                onTap: (){
                  Navigator.of(context).pushNamed("kfly");
                }
              ),
              RaisedButton(
                child: Text("Mostrar onceava pantalla"),
                onPressed: (){
                _quickShowPage(context, "keleventh");
               },
              ),
              RaisedButton(
                child: Text("Mostrar doceava pantalla"),
                onPressed: (){
                _quickShowPage(context, "ktwelveth");
               },
              ),
              RaisedButton(
                child: Text("List View Page"),
                onPressed: (){
                _quickShowPage(context, "klistview");
               },
              ),
              RaisedButton(
                child: Text("Grid View Page"),
                onPressed: (){
                _quickShowPage(context, "kgridview");
               },
              ),
              RaisedButton(
                child: Text("Stack Page"),
                onPressed: (){
                _quickShowPage(context, "kstack");
               },
              ),
              RaisedButton(
                child: Text("Custom Sroll View Page"),
                onPressed: (){
                _quickShowPage(context, "kcustomsv");
               },
              ),
              RaisedButton(
                child: Text("Layout Page"),
                onPressed: (){
                _quickShowPage(context, "klayout");
               },
              ),
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

  void _quickShowPage(BuildContext context, String _direction){
    Navigator.of(context).pushNamed(_direction);
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