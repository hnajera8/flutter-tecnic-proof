import 'package:flutter/material.dart';

class ScrollPaginationUtils {
  static int getCurrentPage(double offset, BuildContext context) {
    return (offset / (MediaQuery.of(context).size.width - (40))).round();
  }

  static double getPageOffset(
    int page,
    BuildContext context,
    double pageOffset,
  ) {
    double offset = page * pageOffset;
    if (offset < 0) {
      offset = 0;
    }

    return offset;
  }
}
