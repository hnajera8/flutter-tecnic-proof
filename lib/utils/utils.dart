import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

void showErrorSnackbar(BuildContext context, String errorMessage) {
  final snackbar = SnackBar(
    content: Text(errorMessage),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

String formatPrice(double price) {
  return NumberFormat.currency(
    locale: 'es_ES',
    symbol: '€',
    decimalDigits: 2,
  ).format(price);
}

void launchExternalUrl(String url, {String? scheme}) async {
  Uri launchUri = Uri(
    scheme: scheme ?? 'tel',
    path: url,
  );

  if (await canLaunchUrl(launchUri)) {
    await launchUrl(launchUri);
  } else {
    throw 'No se pudo realizar la llamada';
  }
}
