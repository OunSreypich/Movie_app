import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/Models/category.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

class category_reusable extends StatefulWidget {
  category_reusable({
    super.key,
  });

  @override
  State<category_reusable> createState() => _category_reusableState();
}

class _category_reusableState extends State<category_reusable> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      //width: double.infinity,
      //color: Colors.pink,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                //width: 100,
                height: 20,
                decoration: selectedIndex == index
                    ? BoxDecoration(
                        color: kButtonPrimaryColor,
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    : BoxDecoration(
                        color: kShadowColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
