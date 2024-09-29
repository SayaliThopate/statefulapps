import 'package:flutter/material.dart';

void main(){
  runApp(const Counter());
}

class Counter extends StatefulWidget{
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();

}

class _CounterState extends State<Counter>{
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          title: const Text("Counter App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ), 
        body: Center(
          child: Text("$count"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              count++;
              setState(() {});
            },
            backgroundColor: Colors.blue,
            child:const Icon(Icons.add),
          ),
      ),

    );
  } 

}
