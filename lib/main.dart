import 'package:flutter/material.dart';
import 'package:islamic_app/provider/dummy_model.dart';
import 'package:islamic_app/screen/product_screen.dart';
import 'package:islamic_app/widget/bottom_sheet.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value:Dummy_Product()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: Colors.white,
          canvasColor:Colors.transparent,
            colorScheme:ColorScheme.fromSeed(primary: Colors.green,secondary: Colors.black54,seedColor: Colors.orange)
        ),
        home: ProductScreen(),
        routes:  {MyBottomSheet.routeName: (ctx) => MyBottomSheet(),},
      ),
    );
  }
}

