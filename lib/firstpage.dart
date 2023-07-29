import 'package:flutter/material.dart';

import 'dashboard.dart';

class newScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 500,decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
          
            child:
          Image.asset("images/news.jpg",fit: BoxFit.fill,),),

          SizedBox(height: 10,),
          
          Column(children: [

            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
          child:
          Text("News from around the world for you ",style: TextStyle(color: Color.fromARGB(255, 243, 94, 8),fontSize: 25,fontWeight: FontWeight.bold),),
          
          ),
          SizedBox(height: 3,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),child:
          Text("Best time to read , take your time to read a little more of this world ", style: TextStyle(color: Color.fromARGB(255, 254, 255, 253),fontSize: 20.0),),
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: ElevatedButton(style: ButtonStyle(animationDuration: Duration(seconds: 5),), onPressed: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>

                    newScreen3(),
                        
                  ),
                );
                
              print("going to url");

            }, 
            child: Text("Get Started ")),),],)

        ],
      ),
      ],
      ),
    );
  }
}