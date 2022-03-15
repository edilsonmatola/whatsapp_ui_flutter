import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  late TabController _tabController;
  late PageController _pageController;

  Widget _buildListContacts(
      {required String contactName, required String message}) {
    return ListTile(
      onTap: () {},
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          Icons.person_sharp,
          size: 40,
        ),
      ),
      title: Text(
        contactName,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Text(
        message,
        style: Theme.of(context).textTheme.bodyText2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    /* ViewPOrt is the amount of space that our posts will take in our page
    * controller, which is 80% = 0.8*/
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            forceElevated: innerBoxIsScrolled,
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('WhatsApp'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                ),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Color.fromRGBO(37, 211, 102, 1),
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
        ],
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              _buildListContacts(
                contactName: 'J. Cole',
                message: 'The ville is back, the real is back',
              ),
              _buildListContacts(
                contactName: 'Kendrick Lamar',
                message: 'DAMN',
              ),
              _buildListContacts(
                contactName: 'Isaiah Rashad',
                message: "What's up bruh?",
              ),
              _buildListContacts(
                contactName: 'Big Sean',
                message: 'Detroit 2 is out now!',
              ),
              _buildListContacts(
                contactName: 'David Goggins',
                message: 'Get Hard!',
              ),
              _buildListContacts(
                contactName: 'Kota The Friend',
                message: 'Just sharing love, positivity and good vibes.',
              ),
              _buildListContacts(
                contactName: 'Quavo',
                message: 'Just sharing Mama!',
              ),
              _buildListContacts(
                contactName: 'Aaron May',
                message: 'Let Go bro, let it feel like nothing.',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

/* ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 5),
          children: [
            _buildListContacts(
              contactName: 'J. Cole',
              message: 'The ville is back, the real is back',
            ),
            _buildListContacts(
              contactName: 'Kendrick Lamar',
              message: 'DAMN',
            ),
            _buildListContacts(
              contactName: 'Isaiah Rashad',
              message: "What's up bruh?",
            ),
            _buildListContacts(
              contactName: 'Big Sean',
              message: 'Detroit 2 is out now!',
            ),
            _buildListContacts(
              contactName: 'David Goggins',
              message: 'Get Hard!',
            ),
            _buildListContacts(
              contactName: 'Kota The Friend',
              message: 'Just sharing love, positivity and good vibes.',
            ),
            _buildListContacts(
              contactName: 'Quavo',
              message: 'Just sharing Mama!',
            ),
            _buildListContacts(
              contactName: 'Aaron May',
              message: 'Let Go bro, let it feel like nothing.',
            ),
          ],
        ), */