import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/Models/popular_model.dart';
import 'package:personal_project_movie_app/HomeWork04/screens/detail_screen.dart';

class list_view_movie_reusable extends StatelessWidget {
  const list_view_movie_reusable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lstPopular.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(
                      ind: index,
                    );
                  },
                ),
              );
            },
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
