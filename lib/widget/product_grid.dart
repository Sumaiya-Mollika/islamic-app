import 'package:flutter/material.dart';
import 'package:islamic_app/provider/dummy_model.dart';
import 'package:islamic_app/widget/bottom_sheet.dart';
import 'package:islamic_app/widget/product_item.dart';
import 'package:provider/provider.dart';
class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Dummy_Product>(context);
    final products = productsData.items;
    return GestureDetector(
      onTap: (){

        showModalBottomSheet<void>(
    isDismissible: false,
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {

            return MyBottomSheet();
          },
        );

      },
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              mainAxisSpacing: 10),
          itemCount: products.length,
          itemBuilder: (context, index)=>ChangeNotifierProvider.value(
            value: products[index],
            child:PriductItem(),
          ) ),
    );
  }
}
