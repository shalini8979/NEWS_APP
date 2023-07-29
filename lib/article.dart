
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/widgets/widgets.dart';
import 'model/model.dart';


class MyApp1 extends StatefulWidget {
  @override
  MyApp1State createState() => MyApp1State();
}

class MyApp1State extends State<MyApp1> {
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    const apiKey = '42377c86e2504204a0b387ca67aa9b2b';
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$apiKey'));

    if (response.statusCode == 200) {

      final jsonData = json.decode(response.body);
      setState(() {
        articles = (jsonData['articles'] as List) 
            .map((data) => Article.fromJson(data))
            .toList();
      });
    } else {
      throw Exception('Failed to load articles');
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
          ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ListTile(leading: Image.network(article.urlToImage),
          
              title: 
            bodytxt(article.title, 14, FontWeight.w700, Color.fromARGB(255, 248, 104, 9)),
            
              subtitle:  bodytxt("Author name : " + article.author, 12, FontWeight.w500, Color.fromARGB(255, 253, 251, 251)),
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ArticleDetailsScreen(article: article),
                  ),
                );
              },
            );
          },
        );
  }
}

class ArticleDetailsScreen extends StatelessWidget {
  final Article article;

  ArticleDetailsScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 243, 89, 17),
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 250, 248, 248),
          ),
          title: 
            bodytxt("Article Details ", 25, FontWeight.bold, Color.fromARGB(255, 255, 255, 255)),

          ),
      body: 
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

          child:  Column(children: [
            Image.network(article.urlToImage),

            Container(padding: EdgeInsets.symmetric(horizontal: 10),
               child:Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
          
            bodytxt(article.title, 20, FontWeight.w500, Color.fromARGB(255, 255, 255, 255)),

            const SizedBox(height: 8),
       
            bodytxt('Author: ${article.author}', 16, FontWeight.w700, Color.fromARGB(255, 255, 198, 76)),
            const SizedBox(height: 10),
         
            bodytxt(article.description, 15, FontWeight.w700, Color.fromARGB(255, 224, 87, 23)),

            Divider(height: 20,color: Color.fromARGB(255, 223, 220, 220),thickness: 2.0),

          ],),),

],), ), ); }}







