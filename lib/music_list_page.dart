import 'package:flutter/material.dart';


class MusicListPage extends StatefulWidget {
  const MusicListPage({super.key,});

  @override
  State<MusicListPage> createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {
  int activeIndex = 0;
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
    
    return Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: ListView.separated(
          itemBuilder: (BuildContext context,int pos) {
            Map<String, dynamic> item = feedItems[pos];
            return Container(
              child: ListTile(

                leading : ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    item["image"] ,                     
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
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
      );
  }
}
