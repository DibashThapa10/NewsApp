class NewsModel {
  final String headline;
  final String summary;
  final String image;
  NewsModel(
      {required this.headline,
      required this.summary,
      required this.image});
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
        
        headline: json["title"],
        summary: json["description"],
        image: json["urlToImage"]);
  }
}
