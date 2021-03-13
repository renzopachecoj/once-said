import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:once_said/screens/constants.dart';
import 'package:once_said/screens/explore_results.dart';
import 'package:once_said/screens/search_bar_widget.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  var _artistName = "";

  _updateArtistName(artistName) {
    setState(() {
      this._artistName = artistName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: PADDING_SMALL,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SearchBarWidget(updateArtistName: this._updateArtistName),
          SizedBox(height: COLUMN_SPACING),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                !(_artistName == "")
                    ? _artistName + " once said..."
                    : "Explore",
                style: SECTION_TITLE_STYLE,
              )),
          SizedBox(height: COLUMN_SPACING),
          ExploreContent(),
          Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => ACCENT_COLOR_ALPHA),
                  ),
                  onPressed: () => {},
                  child: Text(
                    "New Random Batch",
                    style: TEXT_BUTTON_STYLE,
                  )))
        ],
      ),
    ));
  }
}
