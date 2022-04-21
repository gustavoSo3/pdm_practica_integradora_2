import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class SongView extends StatefulWidget {
  SongView({Key? key}) : super(key: key);

  @override
  State<SongView> createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Song added to favorites"),
                ),
              );
            },
            icon: Icon(Icons.favorite_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                "https://http2.mlstatic.com/D_NQ_NP_732033-MLM43842264368_102020-O.webp"),
            Container(
              child: Column(
                children: [
                  Text(
                    "Love Someone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "3(The Purple Album)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text("Lukas Graham"),
                  Text("2018"),
                ],
              ),
            ),
            Text("Abrir con:"),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(BootstrapIcons.spotify),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(BootstrapIcons.apple),
                ),
                IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Check song links"),
                      content: Text(
                          "You are about to open a link on your browser, do you want to procede?"),
                      actions: [
                        MaterialButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes, take me there"),
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                  ),
                  icon: Icon(Icons.link),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
