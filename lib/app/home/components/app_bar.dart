import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

final _log =Logger('home/app_bar');

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  String query;
  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      onChanged: (searchQuery) {
        query = searchQuery;
      },
      children: <Widget>[
        ListTile(
          title: Text(query),
        ),
      ],
    );
  }
}