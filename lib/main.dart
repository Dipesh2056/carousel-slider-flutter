import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
      home: MySlider(),
    )
  );
}

class MySlider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: CarouselSlider(
         options: CarouselOptions
           (
           height: 400.0,
           autoPlay: true,
           enlargeCenterPage: true
         ),
         items: _imgURl.map((imagepath) {
           return Builder(
           builder: (BuildContext context){
             return Container(
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.symmetric(horizontal: 8.0),
             
               child: Image.network(imagepath)
             );
    },
           );

    }).toList(),
     )
     ),
   );
  }
final List _source = [Colors.red,Colors.black, Colors.green,Colors.yellow];
final List _imgURl=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8qw-WFNAcWPFn1FZ2BxgdIEicvVfWYBd0EQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxPw2V4PtqVR4lMWZSwjRaGPEhlCFVat-IHQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFlRRcQHBgUpcYEmP4jxU0W9YPpGhl8YYP9A&usqp=CAU',
  'https://i.natgeofe.com/n/d472dd3c-8d38-4eed-ae62-7472a12a17de/secretary-bird-thumbnail-nationalgeographic_2331336_3x2.jpg'

];
}
