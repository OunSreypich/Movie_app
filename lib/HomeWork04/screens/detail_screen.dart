import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

import '../Models/popular_model.dart';
import '../widgets/tabbar_reusable_detail_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? Key,
    required this.ind,
  }) : super(key: Key);
  final int ind;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Set height for the top section
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Set background image
                    ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          colors: [
                            kBackgroundColor,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height),
                        );
                      },
                      blendMode: BlendMode.darken,
                      child: Image.network(
                        '${lstPopular[widget.ind].image}',
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      lstPopular[widget.ind].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    const Text(
                      "2019 • Adventure, Comedy • 2h 8m",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: kButtonPrimaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Play',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: kShadowColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.download_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Download',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      lstPopular[widget.ind].description,
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    tabbar_reusable(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
