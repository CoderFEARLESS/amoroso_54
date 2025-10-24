import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.more_vert),
          Icon(Icons.search),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Today",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof5.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("Learn how Meta will use your info"),
                    subtitle: Text("16h"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Divider(height: 1),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof4.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("5 Unknown Facts recently shared 1 post."),
                    subtitle: Text("20h"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Divider(height: 1),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof1.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("Fandango posted a new reel."),
                    subtitle: Text("2h"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Earlier",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof2.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("9GAG posted a new reel: 'White cat licks black cat'"),
                    subtitle: Text("1d"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Divider(height: 1),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof2.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("All Def Music posted a new reel."),
                    subtitle: Text("2d"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Divider(height: 1),

                Container(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/prof1.jpg'),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text("LADbible posted a new reel."),
                    subtitle: Text("2d"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),

                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("See previous notifications"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}