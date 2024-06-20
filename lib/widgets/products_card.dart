import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/shared/theme.dart';

List<String> itemMovie = [];

Widget movieCards(String imgUrl, String title, String subTitle) {
  return Container(
    margin: const EdgeInsets.only(right: 25),
    height: 340,
    width: 240,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(52),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 92,
                width: 240,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 5,
                      color: whiteColor.withOpacity(0.1),
                    ),
                  ),
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(38),
                    bottomRight: Radius.circular(38),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: whiteTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
