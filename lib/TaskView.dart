import 'package:flutter/material.dart';

class Task {
  String name;
  String description;
  String date;


  Task({required this.name, required this.description, required this.date});
}

class TaskView extends StatefulWidget {
  const TaskView({Key? key}) : super(key: key);

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<Task> tasks = [];
  int taskCounter = 1;

  String numberToWord(int number) {
    List<String> words = ['One','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten',];

    if (number >= 1 && number <= words.length) {
      return words[number - 1];
    }

    return number.toString();
  }

  void _addTask() {
    String name = 'Task ${numberToWord(taskCounter)}';
    String description = 'Your personal task management and planning solution for planning your day, week and months';
    String date = "12.55 on 25th May, 2023";
    setState(() {
      tasks.add(Task(name: name, description: description, date: date));
      taskCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Board', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white70, // Change the color to your desired background color
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),

            child: ListTile(

              title: Text(tasks[index].name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tasks[index].description),
                  SizedBox(height: 10),
                  Text(tasks[index].date),
                ],
              ),
              //subtitle: Text(tasks[index].description),


              contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
            ),


          );
          return ListTile(

            title: Text(tasks[index].name),
            subtitle: Text(tasks[index].description),
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(eccentricity: 1),
        onPressed: _addTask,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}