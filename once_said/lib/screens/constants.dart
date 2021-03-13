import 'package:flutter/material.dart';

//COLOR PALLETE
const ACCENT_COLOR = Color(0xFF9E4770);
const ACCENT_COLOR_ALPHA = Color(0x999E4770);

const DARK_TEXT_COLOR = Color(0xFF201A23);
//const ALT_TEXT_COLOR = Color(0xFF2E2532);
const LIGHT_TEXT_COLOR = Color(0xFFFBFBFB);

const MAIN_BACKGROUND_COLOR = Color(0xFFFBFBFB);
const BOTTOM_NAV_BACKGROUND_COLOR = Color(0xFFFBFBFB);
const CARD_DATA_TEXT_BACKGROUND_COLOR = Color(0xFFFBFBFB);

//PADDING
const PADDING_SMALL = EdgeInsets.all(10);
const PADDING_TEXT = EdgeInsets.all(5);

//BORDER RADII
const BORDER_RADIUS = BorderRadius.all(Radius.circular(12));

//SECTION TITLES
const SECTION_TITLE_STYLE = TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: DARK_TEXT_COLOR);
//COLUMN SPACING
const COLUMN_SPACING = 10.0;
//SEARCH BAR STYLES
const SEARCH_BAR_TEXT_FIELD_BORDER =
    BorderSide(color: ACCENT_COLOR, style: BorderStyle.solid, width: 2.0);
const SEARCH_BAR_ICON_SIZE = 36;
//TEXT BUTTON STYLE
const TEXT_BUTTON_STYLE = TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold, color: DARK_TEXT_COLOR);

//SNIPPET CARD STYLE
const ROUNDED_CORNERS_SHAPE = RoundedRectangleBorder(
    borderRadius: BORDER_RADIUS, side: BorderSide(color: Colors.transparent));
const CARD_LYRIC_TEXT_STYLE_LIGHT = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w100, color: LIGHT_TEXT_COLOR);
const CARD_LYRIC_TEXT_STYLE_DARK = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w100, color: DARK_TEXT_COLOR);
const CARD_DATA_TEXT_STYLE_LIGHT = TextStyle(
    fontSize: 10, fontWeight: FontWeight.normal, color: LIGHT_TEXT_COLOR);
const CARD_DATA_TEXT_STYLE_DARK = TextStyle(
    fontSize: 10, fontWeight: FontWeight.normal, color: DARK_TEXT_COLOR);
