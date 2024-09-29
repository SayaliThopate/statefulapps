import 'package:flutter/material.dart';

void main(){
  runApp(const ChangeColor());
}

class ChangeColor extends StatefulWidget{
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor>{
  bool changeColor =true; 
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Color"),
          backgroundColor:changeColor? Colors.blue:Colors.pink,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if (changeColor==true){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState(() {});
          } ,
          backgroundColor: Colors.blue,
          child: const Icon(Icons.color_lens),
          ),
      ),
    );
  }

}
