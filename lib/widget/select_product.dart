import 'package:flutter/material.dart';
import 'package:islamic_app/provider/dummy_model.dart';
import 'package:provider/provider.dart';
class SelectProduct extends StatefulWidget {
  const SelectProduct({Key? key}) : super(key: key);

  @override
  _SelectProductState createState() => _SelectProductState();
}

class _SelectProductState extends State<SelectProduct> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final selectProduct =
        Provider.of<Dummy_Product>(context, listen: false).findById(productId);
    return Container(

    );
  }
}
