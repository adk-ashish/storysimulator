import 'package:flutter/services.dart';
import 'package:firstapp/models/page.dart' as MyAppPage; // Import with an alias for custom Page class
import 'dart:convert';

Future<List<MyAppPage.Page>> fetchPages(String jsonFilePath) async {
  String jsonString = await rootBundle.loadString(jsonFilePath);
  final parsed = json.decode(jsonString);

  List<MyAppPage.Page> pages = List<MyAppPage.Page>.from(parsed['pages'].map((page) {
    return MyAppPage.Page.fromJson(page);
  }));

  return pages;
}
