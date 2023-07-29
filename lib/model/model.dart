

class Article {
  final String title;
  final String author;
  final String url;
  final String description;
  final String urlToImage;

  Article({
    required this.title,
    required this.author,
    required this.url,
    required this.description,
    required this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      url: json['url'] ?? '',
      description: json['description'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
    );
  }
}


