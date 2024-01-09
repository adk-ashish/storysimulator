import 'package:firstapp/uiformats/formatno1.dart';
import 'package:firstapp/uiformats/formatno2.dart';
import 'package:firstapp/uiformats/formatno3.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/utils/json_loader.dart' as DataLoader;
import 'package:firstapp/models/page.dart' as CustomPage;

class MaleStoryScreen extends StatefulWidget {
  @override
  _MaleStoryScreenState createState() => _MaleStoryScreenState();
}

class _MaleStoryScreenState extends State<MaleStoryScreen> {
  late Future<List<CustomPage.Page>> futurePages;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    futurePages = _loadPages();
  }

  Future<List<CustomPage.Page>> _loadPages() async {
    String jsonFilePath = 'assets/male_story/nursestory.json'; // Replace with your JSON file path
    return await DataLoader.fetchPages(jsonFilePath);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CustomPage.Page>>(
      future: futurePages,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        } else {
          List<CustomPage.Page> pages = snapshot.data!;

          double width = MediaQuery.of(context).size.width;
          double height = MediaQuery.of(context).size.height;

          CustomPage.Page currentPage = pages[currentPageIndex];
          return Scaffold(
            body: Center(
              child: Stack(
                children: [
                  Image.asset(
                    currentPage.pagePicture,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: width * 0.1,
                    right: width * 0.1,
                    bottom: height * 0.85,
                    child: Text(
                      currentPage.texts.join('\n'),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    bottom: 0.1 * height,
                    child: Container(
                      color: Colors.amber,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: currentPage.actionTexts.keys.map((action) {
                          return ElevatedButton(
                            onPressed: () {
                              int nextPageNumber = currentPage.actionTexts[action]!;
                              if (nextPageNumber > 0 && nextPageNumber <= pages.length) {
                                setState(() {
                                  currentPageIndex = nextPageNumber - 1;
                                });
                              }
                            },
                            child: Text(action),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
          }
        }
      },
    );
  }
}
