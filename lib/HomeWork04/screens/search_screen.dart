import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/Models/popular_model.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                        width:
                            10), // Added spacing between the icon and the TextField
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for movies, Shows,...',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          suffixIcon: Icon(Icons.mic, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.transparent),
                                const BorderSide(color: Colors.transparent),
                                0),
                          ),
                          //filled: true,
                          //fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Top Searches',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: const EdgeInsets.only(right: 10),
                      //color: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          '${lstPopular[index].image}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                // Add more widgets here if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
