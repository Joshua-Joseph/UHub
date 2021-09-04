import 'package:flutter/material.dart';
import 'home_page.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(height * 0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: height * 0.03),
            Text('What are you looking for?'),
            Row(children: <Widget>[
              TextButton(onPressed: showResult(0), child: Text('Class XI'))
            ])
          ],
        ),
      ),
    ));
  }

  showResult(int no) {
    String stream = 'Stream';
    String text1 = 'Sorry';
    String text2 = 'An error occured';
    String url1 = 'https://www.marvel.com/404';
    String url2 = 'https://www.marvel.com/404';

    if (no == 0) {
      stream = 'Class XI';
      text1 = 'Apni Kaksha';
      text2 = 'Physics Wallah';
      url1 = 'https://www.youtube.com/channel/UCF7BExjT2zH_mmyqOB139Dg';
      url2 = 'https://www.youtube.com/channel/UCiGyWN6DEbnj2alu7iapuKQ';
    } else if (no == 1) {
      stream = 'Class XII';
      text1 = 'Apni Kaksha';
      text2 = 'Physics Wallah';
      url1 = 'https://www.youtube.com/channel/UCF7BExjT2zH_mmyqOB139Dg';
      url2 = 'https://www.youtube.com/channel/UCiGyWN6DEbnj2alu7iapuKQ';
    } else if (no == 2) {
      stream = 'B.Tech - CSE';
      text1 = 'Geek For Geeks';
      text2 = 'JavaTPoint';
      url1 = 'https://www.geeksforgeeks.org/';
      url2 = 'https://www.javatpoint.com/';
    } else if (no == 3) {
      stream = 'B.Tech - ECE';
      text1 = 'Engineering Made Easy';
      text2 = 'ECE Notes';
      url1 =
          'https://www.youtube.com/playlist?list=PLDp9Jik5WjRtkw7q3aaVvMtLJiiw62V-H';
      url2 =
          'https://engineeringinterviewquestions.com/electronics-communication-engineering-ece-class-lecture-notes-pdf-free-download/';
    }

    HomePage();
  }
}
