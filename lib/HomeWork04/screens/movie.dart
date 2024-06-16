// import 'package:app_project01/SALA_IT/HomeWork04/constrant.dart';
// import 'package:app_project01/SALA_IT/HomeWork04/screens/download_screen.dart';
// import 'package:app_project01/SALA_IT/HomeWork04/widgets/category_reusable.dart';
// import 'package:app_project01/SALA_IT/HomeWork04/widgets/list_view_reusable.dart';
// import 'package:app_project01/SALA_IT/HomeWork04/widgets/two_left_right_reusable.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class MovieScreen extends StatefulWidget {
//   MovieScreen({super.key});

//   @override
//   State<MovieScreen> createState() => _MovieScreenState();
// }

// class _MovieScreenState extends State<MovieScreen> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _page = <Widget>[
//     //Home(),
//     //Search(),
//     //Saved(),
//     DownloadScreen(),
//   ];

//   var _lstImagesMovies = [
//     'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg',
//     'https://www.themoviedb.org/t/p/w1280/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg',
//     'https://www.themoviedb.org/t/p/w1280/qyT2xw9FBxHlNXQYsuNCu8T7Rbo.jpg'
//   ];

//   var _lstCategories = [
//     'All',
//     'Action',
//     'Comedy',
//     'Romance',
//     'Thriller',
//     'Drama',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.save),
//             label: 'Saved',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.downloading_outlined),
//             label: 'Downloads',
//             // ontap even
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Me',
//           ),
//         ],
//         currentIndex: _selectedIndex, // Track the currently selected index
//         selectedItemColor: Colors.white, // Color of the selected item
//         unselectedItemColor: Colors.grey, // Color of the unselected items
//         showSelectedLabels: true, // Whether to show labels for selected items
//         showUnselectedLabels:
//             true, // Whether to show labels for unselected items
//         onTap: _onItemTapped, // Function to handle item tap
//         selectedIconTheme: const IconThemeData(
//           size: 32, // Size of the selected icon
//         ),
//         unselectedIconTheme: const IconThemeData(
//           size: 32, // Size of the unselected icon
//         ),
//         backgroundColor:
//             kShadowColor, // Background color of the BottomNavigationBar
//         type: BottomNavigationBarType
//             .fixed, // Use BottomNavigationBarType.fixed for equal width items
//       ),
//       backgroundColor: kBackgroundColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Set height for the top section
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.35,
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   PageView.builder(
//                     itemCount: _lstImagesMovies.length,
//                     itemBuilder: (context, index) {
//                       var img = _lstImagesMovies[index];
//                       return Image.network(
//                         img,
//                         fit: BoxFit.fill,
//                         width: double.infinity,
//                         height: double.infinity,
//                       );
//                     },
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     left: 0,
//                     right: 0,
//                     child: Container(
//                       height: 50,
//                       width: MediaQuery.of(context).size.width,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: _lstImagesMovies
//                             .map((e) => Container(
//                                   margin: const EdgeInsets.only(right: 10),
//                                   width: 15,
//                                   height: 4,
//                                   decoration: const BoxDecoration(
//                                       shape: BoxShape.rectangle,
//                                       color: Colors.red),
//                                 ))
//                             .toList(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Categories",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22,
//                         color: Colors.white),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   category_reusable(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const RowReusable(
//                     title: 'Most Popular',
//                     subtitle: 'See all',
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   list_view_movie_reusable(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const RowReusable(
//                     title: 'Latest Movies',
//                     subtitle: 'See all',
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   list_view_movie_reusable(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
