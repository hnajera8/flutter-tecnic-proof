import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      leading: const SizedBox.shrink(),
      //actions: model.actions,
      //bottom: model.bottom,
      //shape: model.shape,
      //backgroundColor: model.backgroundColor,
      //automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);
}