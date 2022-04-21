import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:practica_2/widgets/song_widget.dart';

class FavoritesPage extends StatefulWidget {
  FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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
        title: Text("Favorites"),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Spacer();
        },
        itemBuilder: (BuildContext context, int index) {
          return
              // ProfilePageShimmer(
              //   margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
              //   isRectBox: true,
              //   isDarkMode: true,
              // );
              SongWidget();
        },
      ),
    );
  }
}
