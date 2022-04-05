import 'package:flutter/material.dart';
import 'package:islamic_app/widget/dropdown.dart';
import 'package:islamic_app/widget/product_grid.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 35,
                margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.grey,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Filters',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.height,
                            color: Colors.grey,
                          ),
                          MyDropDown(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                child:ProductGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
