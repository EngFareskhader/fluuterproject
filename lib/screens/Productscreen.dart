import 'package:assa/Widgets/product_widget.dart';
import 'package:assa/models/product_data.dart';
import 'package:assa/models/product_model.dart';
import 'package:flutter/material.dart';

class Prodect_Screen extends StatelessWidget {
  List<ProductModel> ListConvertMapToProductModel() {
    return product.map((e) => ProductModel(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product App'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ProductWidget(ListConvertMapToProductModel()[index]);
          },
          itemCount: product.length),
      backgroundColor: Colors.grey,
    );
  }
}
