// import 'package:flutter/material.dart';
// import 'package:firstapp/models/page.dart' as CustomPage;
//
// class FormatOneUI extends StatelessWidget {
//   final CustomPage.Page page;
//   const FormatOneUI({required this.page});
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     // Implement your UI for format number 2 using the 'page' data
//     // Replace this example with your actual UI design
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             Image.asset(
//               page.pagePicture,
//               width: width,
//               height: height,
//               fit: BoxFit.cover,
//             ),
//             Positioned(
//               left: width * 0.1,
//               right: width * 0.1,
//               bottom: height * 0.85,
//               child: Text(
//                 page.texts.join('\n'),
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Positioned(
//               bottom: 0.1 * height,
//               child: Container(
//                 color: Colors.amber,
//                 width: width,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: page.actionTexts.keys.map((action) {
//                     return ElevatedButton(
//                       onPressed: () {
//                         int nextPageNumber = page.actionTexts[action]!;
//                         if (nextPageNumber > 0 && nextPageNumber <= pages.length) {
//                           setState(() {
//                             currentPageIndex = nextPageNumber - 1;
//                           });
//                         }
//                       },
//                       child: Text(action),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
