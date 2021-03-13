import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:palette_generator/palette_generator.dart';

class ResultsCard extends StatelessWidget {
  final song;
  final artists;
  final lyrics;
  final writers;
  final year;
  final imageUrl;
  final random = new Random();

  ResultsCard(
      {this.song,
      this.artists,
      this.lyrics,
      this.writers,
      this.year,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var pos = random.nextInt(99);
    return Container(
        width: MediaQuery.of(context).size.width - (PADDING_SMALL.bottom * 4),
        child: Card(
            elevation: 2,
            shape: ROUNDED_CORNERS_SHAPE,
            borderOnForeground: true,
            child: FutureBuilder<PaletteGenerator>(
                future: _getColorPallete(this.imageUrl), // async work
                builder: (BuildContext context,
                    AsyncSnapshot<PaletteGenerator> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());
                    default:
                      if (snapshot.hasError)
                        return Text('Error: ${snapshot.error}');
                      else {
                        return Stack(fit: StackFit.expand, children: [
                          ClipRRect(
                              borderRadius: BORDER_RADIUS,
                              child: Image.network(
                                this.imageUrl,
                                fit: BoxFit.cover,
                              )),
                          ClipRRect(
                              borderRadius: BORDER_RADIUS,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            color: snapshot
                                                .data!.dominantColor!.color
                                                .withOpacity(0.7),
                                            padding: PADDING_TEXT,
                                            child: Padding(
                                                padding: PADDING_SMALL,
                                                child: Align(
                                                    alignment: pos >= 0 &&
                                                            pos <= 32
                                                        ? Alignment.topLeft
                                                        : pos >= 33 && pos <= 65
                                                            ? Alignment.center
                                                            : Alignment
                                                                .topRight,
                                                    child: Text(
                                                      "\"" + this.lyrics + "\"",
                                                      style: snapshot
                                                                  .data!
                                                                  .dominantColor!
                                                                  .color
                                                                  .computeLuminance() >
                                                              0.3
                                                          ? CARD_LYRIC_TEXT_STYLE_DARK
                                                          : CARD_LYRIC_TEXT_STYLE_LIGHT,
                                                      textAlign: pos >= 0 &&
                                                              pos <= 32
                                                          ? TextAlign.left
                                                          : pos >= 33 &&
                                                                  pos <= 65
                                                              ? TextAlign.center
                                                              : TextAlign.right,
                                                    )))))
                                  ])),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: PADDING_SMALL,
                                child: Text(
                                    this.song +
                                        " · " +
                                        this.year +
                                        "\n" +
                                        this.artists +
                                        "\nLyrics by: " +
                                        this.writers,
                                    style: snapshot.data!.dominantColor!.color
                                                .computeLuminance() >
                                            0.3
                                        ? CARD_DATA_TEXT_STYLE_DARK
                                        : CARD_DATA_TEXT_STYLE_LIGHT)),
                          )
                        ]);
                      }
                  }
                })));
  }

  Future<PaletteGenerator> _getColorPallete(imageUrl) async {
    var paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.network(imageUrl).image,
    );
    return paletteGenerator;
  }
}
