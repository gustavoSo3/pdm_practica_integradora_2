import 'package:flutter/material.dart';

class SongWidget extends StatefulWidget {
  SongWidget({Key? key}) : super(key: key);

  @override
  State<SongWidget> createState() => _SongWidgetState();
}

class _SongWidgetState extends State<SongWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
      child: Column(
        children: [
          Image.network(
            "https://m.media-amazon.com/images/I/71Z0rLIvpuL._AC_SL1448_.jpg",
            width: 250,
            height: 250,
          ),
          Text(
            "Love Someone",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Lukas Graham",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("Remove from Favorites"),
                    content: Text(
                        "You want to remove this song from your favorites?"),
                    actions: [
                      MaterialButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Cancel"),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Yes, remove"),
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                icon: Icon(Icons.favorite),
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
    );
  }
}
