import 'package:flutter/material.dart';
import 'package:firstapp/models/page.dart' as CustomPage;

class FormatTwoUI extends StatelessWidget {
  final CustomPage.Page page;

  const FormatTwoUI({required this.page});

  @override
  Widget build(BuildContext context) {
    // Implement your UI for format number 2 using the 'page' data
    // Replace this example with your actual UI design
    return Center(
      child: Text(
        'Format 2: ${page.texts.join('\n')}',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
