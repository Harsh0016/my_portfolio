import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( extendBodyBehindAppBar: true,
    backgroundColor: Colors.black,
    appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,

    ),
        body: Container(
        child: Stack(
        children: [
        Container(
        margin: EdgeInsets.only(top: 60),
    child : ShaderMask(
    shaderCallback: (rect){
    return LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter
    ,colors: [Colors.black54,Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
    },
    blendMode: BlendMode.dstIn,

    child: Image.asset('assets/img.png',height: 600,width:500,fit: BoxFit.contain,),
    )
    ),
    Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
    child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text('Hello I am',style: TextStyle(
        color: Colors.white,
        fontSize: 30),
    ),
    SizedBox(
      height: 10,
    ),

    Text('Harsh Singh',style: TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.bold
    ),
    ),
    SizedBox(
    height: 2,
    ),
    Text('Software Developer',style: TextStyle(
    color: Colors.white,
    fontSize: 20
    ),
    ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 120,
        child: TextButton(
            onPressed: (){},
            child: Text('Hire Me'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,foregroundColor: Colors.black),
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: (){}, icon: Icon(
            FontAwesomeIcons.instagram,color: Colors.redAccent,)),
          IconButton(
              onPressed: (){}, icon: Icon(
            FontAwesomeIcons.linkedin,color: Colors.blueAccent,)),
          IconButton(
              onPressed: (){}, icon: Icon(
            FontAwesomeIcons.github,color: Colors.blueGrey,)),
          IconButton(
              onPressed: (){}, icon: Icon(
            FontAwesomeIcons.twitter,color: Colors.blue,)),
          IconButton(
              onPressed: (){}, icon: Icon(
            FontAwesomeIcons.facebook,color: Colors.blueAccent,))
        ],

      )


    ],

    ),
    )
    ],

    )



    )
    );
  }
}
