import 'package:flutter/material.dart';

import '../theme.dart';

Widget textTile(String title, String subtitle) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title ?? '',
      style: CustomTheme.bodyText3red,
    ),
    subtitle: Text(
      subtitle ?? '',
      textAlign: TextAlign.justify,
      style: CustomTheme.headline4,
    ),
  );
}

Widget textTile2(String title, String subtitle) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: CustomTheme.bodyText3red,
        ),
        Text(
          subtitle ?? '',
          textAlign: TextAlign.justify,
          style: CustomTheme.headline4white,
        ),
      ],
    ),
  );
}
