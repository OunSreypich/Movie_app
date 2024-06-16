import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

import '../Models/popular_model.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          title: const Text(
            'Download',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.red,

            indicatorPadding: EdgeInsets.symmetric(horizontal: -55),
            indicatorWeight:
                3.0, // Increase the value to make the indicator thicker
            labelColor: Colors.red,
            labelStyle: TextStyle(
              fontSize: 16.0,
            ),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Downloaded'),
              Tab(text: 'Downloading'),
            ],
          ),
        ),
        body: Container(
          color: kBackgroundColor,
          child: TabBarView(
            children: [
              ListView.builder(
                itemCount: lstPopular.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.height * 0.3,
                      height: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kShadowColor.withOpacity(0.4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.height * 0.17,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  height: double.infinity,
                                  lstPopular[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        lstPopular[index].title,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                        maxLines: 2,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        lstPopular[index].description,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                      ),
                                      const SizedBox(height: 25),
                                      Row(children: [
                                        Text(
                                          lstPopular[index].time,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          '|',
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          '${lstPopular[index].storage} GB',
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.5)),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 1),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const Center(
                  child: Text('downloading Content',
                      style: TextStyle(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
