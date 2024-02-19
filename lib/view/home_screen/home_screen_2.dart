import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold),), 
        actions: [CircleAvatar(
          child: Icon(Icons.person),
        ),
        Icon(Icons.menu),],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container( alignment: Alignment.topLeft,
                child: Text("Main Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container( alignment: Alignment.topLeft,
                child: Text("13.458", 
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              ),
            ),
            
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 30,
                width: 100,
                color: Colors.amber,
                child: Center(child: Text("Back Screen"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}