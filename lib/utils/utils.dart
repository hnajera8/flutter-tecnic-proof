import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showErrorSnackbar(BuildContext context, String errorMessage) {
  final snackbar = SnackBar(
    content: Text(errorMessage),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior
        .floating, // Opcional: Cambia el comportamiento del SnackBar
  );

  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

String formatPrice(double price) {
  return NumberFormat.currency(
    locale: 'es_ES', // Cambia a tu locale si es diferente
    symbol: '€',
    decimalDigits: 2,
  ).format(price);
}
