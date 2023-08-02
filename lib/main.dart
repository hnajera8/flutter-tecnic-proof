import 'package:flutter/material.dart';
import 'package:flutter_tecnic_proof/core/http_service.dart';
import 'package:flutter_tecnic_proof/features/product_list/data/repositories/api_product_repository.dart';
import 'package:flutter_tecnic_proof/features/product_list/presentation/cubit/product_list_cubit.dart';

import 'features/product_list/presentation/view/product_list_view.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<HttpService>(
    () => HttpService(),
  );
  getIt.registerLazySingleton<ApiProductRepository>(
    () => ApiProductRepository(
      httpServer: GetIt.I<HttpService>(),
    ),
  );
  getIt.registerLazySingleton<ProductListCubit>(() => ProductListCubit(
        repository: GetIt.I<ApiProductRepository>(),
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductListView(),
    );
  }
}
