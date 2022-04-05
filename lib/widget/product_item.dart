import 'package:flutter/material.dart';
import 'package:islamic_app/provider/product_model.dart';
import 'package:islamic_app/widget/bottom_sheet.dart';
import 'package:provider/provider.dart';

class PriductItem extends StatelessWidget {
  const PriductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          isDismissible: false,
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return MyBottomSheet(
              productImage: product.image,
              productName: product.title,
              productDetail: product.detail,
              productPrePrice: product.prePrice,
              productPrice: product.price,
            );
          },
        );
      },
      child: GridTile(
          footer: GridTileBar(
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                ],
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 70,
                  child: Image.network(
                    '${product.image}',
                    fit: BoxFit.cover,
                  )),
              Text('${product.title}'),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  '${product.quantity}${product.quantityType}',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Text(
                '${product.price}',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          )),
    );
  }
}
