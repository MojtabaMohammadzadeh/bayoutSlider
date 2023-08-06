



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  List<String> _ImageList=[
    "assets/01.jpg",
    "assets/02.jpg",
    "assets/03.jpg",
    "assets/04.jpg",
    "assets/05.jpg",
    "assets/06.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(child:
          ListView.builder(
              itemCount:_ImageList.length ,
              itemBuilder: (context, index){
               return Container(
                  width: screenWidth,
                 height: screenHeight*0.3,
                 margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     image: AssetImage(_ImageList[index]),
                     fit: BoxFit.cover
                   )
                 ),
                );
              }

          )
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet<void>(
                context: context,
              builder: (BuildContext context) {
                  return _showModal();
              }
              );
            },
            child: Container(
              width: screenWidth,

              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20), topRight:Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 5  horizontally
                      -2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ]
              ),
              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Image.asset("assets/arrow_top.png", width:20,height: 20, fit: BoxFit.cover, ),
                  SizedBox(height: 8,),
                  Text("4,800,000 ADE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color:Color(0xffFF6F3C)),),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 8,),
                      Image.asset("assets/bed.png", width:20,height: 20, fit: BoxFit.cover, ),
                      SizedBox(width: 8,),
                      Text("3"),
                      SizedBox(width: 24,),
                      Image.asset("assets/area.png", width:20,height: 20, fit: BoxFit.cover, ),
                      SizedBox(width: 8,),
                      Text("4500 SQMT"),
                      SizedBox(width: 24,),
                      Image.asset("assets/bath.png", width:20,height: 20, fit: BoxFit.cover, ),
                      SizedBox(width: 8,),
                      Text("3"),
                    ],
                  ),
                  SizedBox(height: 8,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _showModal extends StatefulWidget {
  const _showModal({super.key});

  @override
  State<_showModal> createState() => _showModalState();
}

class _showModalState extends State<_showModal> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        color: Color(0xfff5f5f5),
          borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("assets/arrow_down.png", width:20,height: 20, fit: BoxFit.cover, ),
            ),
            SizedBox(height: 8,),
            Text("4,800,000 ADE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color:Color(0xffFF6F3C)),),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 8,),
                Image.asset("assets/bed.png", width:20,height: 20, fit: BoxFit.cover, ),
                SizedBox(width: 8,),
                Text("3"),
                SizedBox(width: 24,),
                Image.asset("assets/area.png", width:20,height: 20, fit: BoxFit.cover, ),
                SizedBox(width: 8,),
                Text("4500 SQMT"),
                SizedBox(width: 24,),
                Image.asset("assets/bath.png", width:20,height: 20, fit: BoxFit.cover, ),
                SizedBox(width: 8,),
                Text("3"),
              ],
            ),
            SizedBox(height: 16,),

            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum0"),
            SizedBox(height: 16,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum0"),
            SizedBox(height: 16,),

            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum0"),

          ],
        ),
      ),
    );
  }
}

