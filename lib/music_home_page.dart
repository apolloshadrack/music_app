import 'package:flutter/material.dart';
import 'package:music_list/library_page.dart';
import 'package:music_list/music_list_page.dart';
import 'package:music_list/payment_page.dart';
import 'package:music_list/settings_page.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({super.key});

  // This widget is the root of your application.
  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int activeIndex = 0;
  List<Widget> pages = [
    const MusicListPage(),
    const  LibraryPage(),
    const  PaymentPage(),
    const  SettingsPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        leadingWidth: 150,
        leading: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:  Text(
              "Spotify",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
    
      ),
      body: pages[activeIndex],
        
     
          // OnTap Listens to the tap event
          // value Updates the activeIndex
          // Set State Rebuilds the widget
          // Updates the UI
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: activeIndex,
            onTap: (int value) {
              setState(() {
                activeIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: "Library",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: "Payment",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.black,
              ),
            ],
          
          ),
        )
     
    );
  }
}
