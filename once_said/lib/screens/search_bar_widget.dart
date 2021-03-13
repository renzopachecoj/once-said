import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController searchBarController = TextEditingController();
  final updateArtistName;
  SearchBarWidget({required this.updateArtistName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: TextField(
                textInputAction: TextInputAction.search,
                enableSuggestions: true,
                controller: searchBarController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BORDER_RADIUS,
                      borderSide: SEARCH_BAR_TEXT_FIELD_BORDER),
                  hintText: 'Enter artist name...',
                ),
                onSubmitted: (String artistName) => {
                      updateArtistName(artistName),
                      searchBarController.clear(),
                      FocusScope.of(context).unfocus()
                    })),
        SizedBox(
          width: 15,
        ),
        IconButton(
            icon: Icon(
              Icons.search_rounded,
              size: 36,
              color: ACCENT_COLOR,
            ),
            splashColor: ACCENT_COLOR.withAlpha(40),
            highlightColor: Colors.transparent,
            onPressed: () => {
                  updateArtistName(searchBarController.text),
                  searchBarController.clear(),
                  FocusScope.of(context).unfocus()
                })
      ],
    );
  }
}
