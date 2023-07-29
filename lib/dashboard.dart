import 'package:flutter/material.dart';
import 'package:untitled/article.dart';
import 'package:untitled/news_search.dart';
import 'package:untitled/widgets/widgets.dart';



class newScreen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(235, 19, 18, 18),
      appBar: AppBar(
        leading: Icon(Icons.newspaper_outlined),
        title: Text("News App ",style: TextStyle(color:const Color.fromARGB(255, 252, 248, 248),fontWeight:FontWeight.bold),),
        backgroundColor: Color.fromARGB(235, 22, 22, 22),
        bottomOpacity:100,


      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child:
       SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
             children: [
           Padding(padding: EdgeInsets.symmetric(horizontal: 20),
           child:
           Container(width: 400,height: 50,
               child: TextField(
              
                  decoration: InputDecoration(prefixIcon:InkWell(
                    onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        newsSearchScreen(),
                  ),
                );
                },
                  child: Icon(Icons.search,)),
                  suffixIcon: Icon(Icons.emoji_emotions),hintText:"Tap on Search icon ",
                  fillColor:Colors.white,filled: true,border:OutlineInputBorder( 
                  borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none  )),
               ),
           ),
           
          ),
          SizedBox(height:20 ,),
          Container(
            child:Row(
              children: [
                SizedBox(height: 10,),container1("All"),
                SizedBox(width: 10,),container1("Political"),
                SizedBox(width: 10,),container1("Business"),
                SizedBox(width: 10,),container1("Sports"),
              ],
            ),
       
 ),
          Divider(color: const Color.fromARGB(255, 151, 149, 149),height: 30,),
       
          SizedBox(height:10),
       
          SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      container2(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUFXBzJiP_ifCRiKIDX8S76yQAvSAQ_pRkAA&usqp=CAU"),
                      container2(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZNKE2pV4TgUf38suBCu_6sQPGC0aGX3P5LA&usqp=CAU"),
                      container2(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF1LOLnwU-LzETnJLr23Fs5PBI5Nhx2PobsQ&usqp=CAU"),
                      container2(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpc_L8PcotmnEXLn_3Bo-ZxNUNne3wMt0ig&usqp=CAU"),
                      container2(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTcdKDQmGVcb52TPR-urwILqyHEFEI8VGBYA&usqp=CAU"),
                    ],
                  ),),
          SizedBox(height: 10,),
       
          Row(children: [
            SizedBox(width: 140,),Iconcircle(), SizedBox(width: 3,),Iconcircle(), SizedBox(width: 3,),Iconcircle(),
            SizedBox(width: 3,),Iconcircle(), SizedBox(width: 3,),Iconcircle(), SizedBox(width: 3,),Iconcircle(),
       
          ],),
           SizedBox(height: 20,),
       
          Row(children: [
            write_text("Recommendation "),
            SizedBox(width: 150,),
            write_text("See all "),
          ],),
          SizedBox(height: 20,),

          SingleChildScrollView(
            child: Container(
              height: 500,width: 300,
              child:MyApp1(),
            ),
          ), ],),
       ),),
      );
  }
}
