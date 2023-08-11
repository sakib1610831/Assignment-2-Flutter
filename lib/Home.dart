import 'package:flutter_ui_design_ashik_miah/TaskView.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(child: Column(
            children: [
              Text("Welcome To"),
              Text('Plan IT',style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold), )
            ],
          ),

            height: 130,
            width: 320,

          )
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Your personal task management and planning solution',textAlign: TextAlign.center,style: TextStyle(fontSize: 20, ),
          ),
          Container(
            width: 100,
            height: 70,
            margin: EdgeInsets.only(bottom: 60,top: 30),

            child: SizedBox(
              width: 40, // Adjust the width as per your requirement
              height: 40, // Adjust the height as per your requirement
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TaskView()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(Size(100, 40)),
                ),
                child: Text("Let's Get Started",style: TextStyle(fontSize: 20, ),),
              ),
            ),


          ),

        ],
      ),

    );
  }
}