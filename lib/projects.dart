import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myPro(lang,title,desc,star) {
    return  Container(
        height: 220,
        width: MediaQuery.of(context).size.width*0.9,
        child: Card(
            color: Colors.grey[700],
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 10,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lang, style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(title, style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(desc, style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,
                          color: Colors.white70,
                          size: 18),
                      SizedBox(
                        width: 4,
                      ),
                      Text(star,style: TextStyle(
                          color: Colors.white70
                      ),),
                      Expanded(child: Container()),
                      IconButton(onPressed: () {}, icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              myPro('Flutter', 'Click 2 Code', 'An Online Compiler','10'),
              myPro('Flutter', 'Click 2 Code', 'An Online Compiler','10'),
              myPro('Flutter', 'Click 2 Code', 'An Online Compiler','10'),
              myPro('Flutter', 'Click 2 Code', 'An Online Compiler','10'),
              myPro('Flutter', 'Click 2 Code', 'An Online Compiler','10')

            ],
          ),
        ),
      ),
    );
  }
}
