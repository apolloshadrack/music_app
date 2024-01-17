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
  List<Map<String, dynamic >> feedItems = [
    {
      "title": "Good Morning",
      "subtitle": "Kanye West",
      "image": "https://picsum.photos/seed/picsum/2300/300",
    },
    {
      "title": "Graduation Day",
      "subtitle": "J Cole",
      "image": "https://picsum.photos/seed/picsum/2200/300",
    },
    {
      "title": "I love Kanye",
      "subtitle": "Jay Z",
      "image": "https://picsum.photos/seed/picsum/200/300",
    },
    {
      "title": "Life of Pablo",
      "subtitle": "Kanye West",
      "image": "https://picsum.photos/seed/picsum/200/300",
    },
    {
      "title": "Graduation Day",
      "subtitle": "Kanye West",
      "image": "https://picsum.photos/seed/picsum/900/300",
    },
    {
      "title": "Rihanna loves Rock",
      "subtitle": "Kanye West",
      "image": "https://picsum.photos/seed/picsum/1700/300",
    },
    {
      "title": "Kids See Ghosts",
      "subtitle": "Kid Cudi",
      "image": "https://picsum.photos/seed/picsum/2500/300",
    },
  ];
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        leadingWidth: 150,
        leading: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:  Text(
              "Tracks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
    
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: ListView.separated(
          itemBuilder: (BuildContext context,int pos) {
            Map<String, dynamic> item = feedItems[pos];
            return Container(
              child: ListTile(

                leading : ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Image.network(
                      item["image"] ,                     
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                title:
                 Text(
                  item["title"],
                
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                subtitle: 
                 Text(
                 item["subtitle"],
                  style: const TextStyle(
                    color: Color.fromARGB(123, 255, 255, 255),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                trailing: Icon(
                  Icons.more_horiz,
                  color:  Colors.white.withAlpha(123),
                )
              ),
            );
          },
          
          separatorBuilder: (BuildContext context, int pos) {
            return const Divider(
              color: Color.fromARGB(23, 255, 255, 255),
              height: 10,
            );
          },
          itemCount: feedItems.length,
          
        ),
      ),
      
    );
  }
}
