import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const ChatApp(title: 'Flutter Demo Home Page'),
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({ Key? key, required String title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Trial App"),
        actions: const [
          Icon(Icons.search), Icon(Icons.more_horiz), Icon(Icons.camera)
        ],
      ),
    body: Column(
      children: [
        ChatWidget(name: "ben anumel",message: "how are you",time: "12:00",image:"https://images.unsplash.com/flagged/photo-1573603867003-89f5fd7a7576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=446&q=80"), 
        ChatWidget(name: "ben anumel",message: "how are you",time: "12:00",image: "https://images.unsplash.com/flagged/photo-1573603867003-89f5fd7a7576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=446&q=80"),
        ChatWidget(name: "ben anumel",message: "how are you",time: "12:00",image: "https://images.unsplash.com/flagged/photo-1573603867003-89f5fd7a7576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=446&q=80"),
        
       
      ],
    ),
    );

  }
}

class ChatWidget extends StatelessWidget {
   ChatWidget({
    Key? key, required this.name, required this.message, required this.time, required this.image,
  }) : super(key: key);
  final String name;
  final String message;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,
    color:  Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/flagged/photo-1573603867003-89f5fd7a7576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=446&q=80"),
        radius: 30,
        
        ),
        title:  Text(name),
        subtitle:Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(Icons.done_all),
             Text(message)
          ],
        ),
        trailing:  Text(time),
      ),
    ),
    );
  }
}