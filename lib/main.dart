import 'package:flutter/material.dart';

void main() => runApp(RiojasApp());

class RiojasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion Interactiva Vive Bus",
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    ); //Fin Material
  } //Fin Widget
} //Fin de Fila Columna

class PaginaInicial extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {
  bool _enabled = true;
  int value;
  List<DropdownMenuItem<int>> items = [
    DropdownMenuItem(
      value: 5,
      child: Text('1'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VIVE BUS'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Image.asset("images/vive.jpg"),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre Conductor',
                ),
              ), //TextFormField
            ), //Padding
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                

                decoration: InputDecoration(
                  
                  labelText: 'Apellido',
                ), //Decoration
              ), //TextFormField
            ), //Padding
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 20),
                new Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'No Empleado'),
                    validator: (value) {
                      return value.isEmpty ? 'Empty name.' : '';
                    },
                  ),
                ), //Expanded
                DropdownButton(
                  items: items,
                  hint: Text("Numero de ViveBus"),
                  onChanged: _enabled
                      ? (v) => setState(() {
                            value = v;
                          })
                      : null,
                  value: value,
                ), //Fin DropdownButton
              ], //Fin Widget []
            ), //Fin del primer Row

            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green[100],
                  onPressed: () => print("Button Pressed"),
                  child: new Text("Iniciar"),
                ), 
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                RaisedButton(
                  color: Colors.red[100],
                  onPressed: () => print("Button Pressed"),
                  child: new Text("Cancelar"),
                ), 
              ], //Widget
            ), //Row 
          ], //Widget
        ), //Columna
      ), //Body 
    ); //Scaffold
  } //Widget
} //MyHomePageState
