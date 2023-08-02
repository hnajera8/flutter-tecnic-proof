import 'package:flutter/material.dart';

class ProductCardModel {
  const ProductCardModel({
    required this.name,
    required this.type,
    required this.price,
  });
  final String name;
  final String type;
  final String price;
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.model,
  });
  final ProductCardModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  model.name,
                  style: Theme.of(context).textTheme.titleMedium,
                )),
                Text(model.type),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                model.price,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
