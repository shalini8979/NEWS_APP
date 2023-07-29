
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class newsSearchScreen extends StatefulWidget {
  @override
  _newsSearchScreenState createState() => _newsSearchScreenState();
}

class _newsSearchScreenState extends State<newsSearchScreen> {
  List<dynamic> newsList = [];

  Future<void> searchFood(String category) async {
  
    final response = await http.get(
        Uri.parse('https://newsapi.org/v2/everything?q=$category&apiKey=42377c86e2504204a0b387ca67aa9b2b'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        newsList = data['articles'];
      });
    } else {
      setState(() {
        newsList = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      appBar: AppBar(
        title: Text('News Search'),
        backgroundColor:Color.fromARGB(255, 243, 144, 62),
      ),
      body:
      Column(
        
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
             Container(width: 400,height: 50,
             decoration: BoxDecoration(color:Color.fromARGB(255, 243, 144, 62)),
               child: TextField(
                style: TextStyle(color:Colors.black),
              onChanged: (value) {
                searchFood(value);
                
              },
              decoration: InputDecoration(
                labelText: 'Search for News Topic ',
                
              ),
            ),),),
          
          Expanded(
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final news1 = newsList[index];
                return ListTile(
                   textColor: Colors.white,
                  // leading: Image.network(news1['urlToImage']!=Null?news1['urlToImage']:""),
                  title: Text(news1['title'][index],style: TextStyle(color: Color.fromARGB(255, 243, 144, 62)),),
                  subtitle: Text(news1['description'][index],style: TextStyle(color: Colors.white),),
                  
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



