import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [LeafBorderText(), LeafBorderText(), LeafBorderText()],
        ),
      ),
    );
  }
}

class LeafBorderText extends StatelessWidget {
  const LeafBorderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //kontainer
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: const Padding(
        padding: EdgeInsets.all(8.0), //padding
        child: Text(
          //gaya teks anak
          "menggunakan font google kranky ukuran 20",
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}


@override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}



class BaseLayout extends StatelessWidget{
  const BaseLayout({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Image.asset("Images/wobafet.jpg") 
        ]
      )
    );
  }
}
