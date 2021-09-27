import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

// class SearchInput extends StatefulWidget {
//   const SearchInput({Key? key}) : super(key: key);
//
//   Future<String> getCurrentSearch() async {
//     String query = search;
//     return query;
//   }
//
//   @override
//   _SearchInputState createState() => _SearchInputState();
// }
//
// class _SearchInputState extends State<SearchInput> {
//   late String search;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints.tightFor(width: 300),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search_outlined),
//                     hintText: 'Search for articles',
//                     hintStyle: TextStyle(
//                       color: kSearchField,
//                     ),
//                     border: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Colors.grey,
//                         width: 2.0,
//                       ),
//                     ),
//                   ),
//                   onChanged: (text) {
//                     if (text.length >= 3) {
//                       print(text);
//                       setState(() {
//                         search = text;
//                       });
//                     }
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
