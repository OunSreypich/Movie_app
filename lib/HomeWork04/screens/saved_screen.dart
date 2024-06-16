import 'package:flutter/material.dart';
import 'package:personal_project_movie_app/HomeWork04/constrant.dart';
import 'package:personal_project_movie_app/HomeWork04/screens/log_in_register.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInRegister()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '087770210',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.list_alt_outlined,
                        size: 30,
                        color: Colors.grey.shade300,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: kBackgroundColor,
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.red,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: -45),
                        indicatorWeight: 3.0,
                        labelColor: Colors.red,
                        labelStyle: TextStyle(fontSize: 16.0),
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(text: 'Chat'),
                          Tab(text: 'Contact'),
                          Tab(text: 'Teams'),
                        ],
                      ),
                      Container(
                        height: 400, // Set a fixed height for the TabBarView
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            const Center(child: Text('Chat')),
                            const Center(child: Text('Similar Content')),
                            const Center(child: Text('About Content')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
