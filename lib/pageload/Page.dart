// Dart classes to represent the JSON structure

import 'dart:convert';

import 'package:flutter/material.dart';

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

// Function to load and parse JSON
Future<List<Page>> fetchPages(BuildContext context) async {
  String jsonString = await DefaultAssetBundle.of(context)
      .loadString('assets/male_story/nursestory.json'); // Replace with your JSON file path

  final parsed = json.decode(jsonString);

  List<Page> pages = List<Page>.from(parsed['pages'].map((page) {
    return Page.fromJson(page);
  }));

  return pages;
}
