import 'package:flutter/material.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        leading: const Text(
            "Tracks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
    
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: ListView.separated(
          itemBuilder: (BuildContext context,int pos) {
            return Container(
              height : 100,
              color: Colors.amber,
            );
          },
          separatorBuilder: (BuildContext context, int pos) {
            return const Divider(
              color: Colors.black,
              height: 10,
            );
          },
          itemCount: 10,),
      ),
      
    );
  }
}
