import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  List data = [
    {"name" : 'Communication Systems Quiz', 'time' : '10.00 AM'},
    {"name" : 'OS Report', 'time' : '11.00 AM'},
    {"name" : 'Buy Some Stuff', 'time' : '1.00 PM'},
    {"name" : 'Go To The Gym', 'time' : '2.00 PM'},
    {"name" : 'Flutter Task', 'time' : '4.00 PM'},
    {"name" : 'Flutter Taskبردو', 'time' : '6.00 PM'}
  ];
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff4368FF),
        appBar: AppBar(
          title: const Text("Todo List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontFamily: 'assets/Raleway-Regular.ttf')),
          backgroundColor: const Color(0xff4368FF),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, i){
          return ListTile(
            title: Text("${data[i]['name']}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,fontFamily: 'Raleway'),),
            subtitle: Text("${data[i]['time']}",style: const TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Raleway'),),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: const Color(0xff4368FF),
              ),
              child: const Icon(Icons.delete),
              onPressed: () {showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: const Text("Delete",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  content: const Text("Are you sure you want to delete this item?"),
                  actions: [
                        ElevatedButton(
                          onPressed: (){Navigator.of(context).pop();},
                          style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Colors.white),
                          child: const Text("Cancel",style: TextStyle(color: Colors.black,fontSize: 17),),
                        ),
                        ElevatedButton(
                          onPressed: (){Navigator.of(context).pop();},
                          style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Colors.white), child: const Text("Yes",style: TextStyle(color: Colors.red,fontSize: 17),),
                    ),],
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
                );});},
            ),
          );
        }),
      ),
      );}}