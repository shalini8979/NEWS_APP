import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget container1(text1){

  return Container(
    height: 42,width: 80,decoration: 
    BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: const Color.fromARGB(255, 255, 115, 0),
    
    ),
    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: Text(text1,style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),),
  );

}

Widget container2(String imgurl) => Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    width: 360,
    height: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imgurl,
        fit: BoxFit.cover,
      ),
    ),
  ),
);

Widget container3(String imgurl) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          imgurl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );


Widget Iconcircle()=> 
       Icon(Icons.circle,color: Color.fromARGB(255, 124, 123, 123),size: 10.0,);


Widget write_text(String txt1)=>Text(txt1,selectionColor: const Color.fromARGB(255, 255, 255, 255),
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),);


Widget  bodytxt(txtbody1,fontsize1,fontweight1,color1)=> Text(
              txtbody1,
              style: GoogleFonts.poppins(
                fontSize: fontsize1,
                fontWeight: fontweight1,
                color: color1,
              ),
   );