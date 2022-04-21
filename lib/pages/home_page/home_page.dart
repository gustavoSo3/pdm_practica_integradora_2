import 'package:avatar_glow/avatar_glow.dart';

import 'package:flutter/material.dart';

import 'package:practica_2/pages/favorites_page/favorites_page.dart';
import 'package:practica_2/pages/song_view/song_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Tap to listen",
              style: TextStyle(fontSize: 30),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SongView()),
                );
              },
              child: Icon(
                Icons.mic,
                size: 250,
              ),
              color: Colors.white,
              textColor: Colors.black,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            // AvatarGlow(
            //   repeatPauseDuration: Duration(milliseconds: 10),
            //   endRadius: 260,
            //   child: MaterialButton(
            //     onPressed: () {},
            //     child: Icon(
            //       Icons.music_note,
            //       size: 250,
            //     ),
            //     color: Colors.white,
            //     textColor: Colors.black,
            //     shape: CircleBorder(),
            //     padding: EdgeInsets.all(16),
            //   ),
            // ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavoritesPage()),
                    );
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  color: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                ),
                MaterialButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Loging out"),
                      content: Text("You are about to log out, are you sure"),
                      actions: [
                        MaterialButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: Text("Yes, log out"),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  color: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
