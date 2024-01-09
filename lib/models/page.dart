// models/page.dart

class Page {
  final int pageNumber;
  final List<String> texts;
  final Map<String, int> actionTexts;
  final String pagePicture;
  final int formatNumber;

  Page({
    required this.pageNumber,
    required this.texts,
    required this.actionTexts,
    required this.pagePicture,
    required this.formatNumber,
  });

  factory Page.fromJson(Map<String, dynamic> json) {
    return Page(
      pageNumber: json['Page Number'],
      texts: List<String>.from(json['Texts']),
      actionTexts: Map<String, int>.from(json['Action Texts']),
      pagePicture: json['Page Picture'],
      formatNumber: json['Format Number'],
    );
  }
}
