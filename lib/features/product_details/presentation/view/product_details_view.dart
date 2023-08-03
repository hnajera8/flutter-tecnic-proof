import 'package:flutter/material.dart';
import 'package:flutter_tecnic_proof/core/constants.dart';
import 'package:flutter_tecnic_proof/features/product_list/domain/model/product.dart';
import 'package:flutter_tecnic_proof/ui_kit/widgets/app_bar.dart';
import 'package:flutter_tecnic_proof/utils/utils.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      body: _ProductDetailsBody(product),
    );
  }
}

class _ProductDetailsBody extends StatelessWidget {
  const _ProductDetailsBody(this.product);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF5F0AFF),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _InfoContent(product.displayName, product.description),
              if (product.type == ProductTypes.FIBERVODAFONE)
                Text(
                  'Contrata ahora esta oferta y disfruta para siempre de ${product.fiberDownloadMegas}Mb de descarga y ${product.fiberUploadMegas}Mb de subida',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                )
              else if (product.type == ProductTypes.PHONELINE)
                _PhoneLineData(product),
              const SizedBox(height: 10),
              _ProductImages(product.type),
              const SizedBox(height: 20),
              _PriceAndCallButton(product.prices.first.price),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoContent extends StatelessWidget {
  const _InfoContent(
    this.productName,
    this.description,
  );
  final String productName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          productName,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(color: Colors.white),
        ),
        const Divider(),
      ],
    );
  }
}

class _PhoneLineData extends StatelessWidget {
  const _PhoneLineData(this.product);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Características de la línea:',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        const SizedBox(height: 10),
        if (product.phonelineMegas > 0)
          _ListItem(text: 'Megas: ${product.phonelineMegas.toInt()}'),
        if (product.phonelineMinutes > 0)
          _ListItem(text: 'Minutos: ${product.phonelineMinutes.toInt()}'),
        if (product.phonelineSms > 0)
          _ListItem(text: 'Sms: ${product.phonelineSms.toInt()}'),
      ],
    );
  }
}

class _ListItem extends StatelessWidget {
  final String text;

  const _ListItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.white,
            size: 17,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _ProductImages extends StatelessWidget {
  const _ProductImages(this.type);
  final ProductTypes type;

  @override
  Widget build(BuildContext context) {
    String? img = type.getImage();
    return img != null ? Image.asset(img) : const SizedBox.shrink();
  }
}

class _PriceAndCallButton extends StatelessWidget {
  const _PriceAndCallButton(this.price);
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          formatPrice(price),
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () => launchExternalUrl(Constants.phone),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white,
          )),
          child: const Text('Llámanos'),
        ),
      ],
    );
  }
}
