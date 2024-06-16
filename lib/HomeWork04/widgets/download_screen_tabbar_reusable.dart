import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';

class tabbar_reusable_download_screen extends StatelessWidget {
  const tabbar_reusable_download_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.red,

            indicatorWeight:
                3.0, // Increase the value to make the indicator thicker
            labelColor: Colors.red,
            labelStyle: TextStyle(
              fontSize: 16.0,
            ),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Episode'),
              Tab(text: 'Similar'),
            ],
          ),
          Container(
            height: 200, // Set a fixed height for the TabBarView
            child: TabBarView(
              children: [
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 148,
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
                                width:
                                    MediaQuery.of(context).size.height * 0.17,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Trailer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 5),
                                        Icon(
                                          Icons.download,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Aladdin, a street boy who falls in love with a princess. with differences in caste and wealth, Aladdin tries to find a way to become a prince...',
                                      maxLines: 5,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const Center(child: Text('Similar Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
