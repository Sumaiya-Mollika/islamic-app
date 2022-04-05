import 'package:flutter/material.dart';
class MyBottomSheet extends StatefulWidget {
  static const routeName = '/bottomSheet';

  String? productName;
  String? productImage;
  int ?productPrice;
  int ?productPrePrice;
  String ?productDetail;
  MyBottomSheet({this.productName,this.productImage,this.productDetail,this.productPrePrice,this.productPrice,});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 40, 80),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    height:150,
                    child: Image.network(
                      widget.productImage!,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                widget.productName!,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),


                RichText(
                  text: TextSpan(
                    text: 'Tk ${widget.productPrice}  ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18,color: Theme.of(context).colorScheme.primary),
                    children:<TextSpan>[
                      TextSpan(text:  'TK ${widget.productPrePrice}', style: TextStyle(color: Colors.grey,
                          fontSize: 15,decoration:TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Text("${widget.productDetail}"),
                SizedBox(height: 6,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  Row(
                    children: [
                      Text('Size:  ',style: TextStyle(fontWeight: FontWeight.w600),),

                 Container(
                   width: 150,
                   child: FittedBox(

                     child: Row(
                       children: [
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             primary: Colors.amber,
                           ),

                             onPressed: (){}, child: Text('S',style: TextStyle(fontSize: 20),
                   )),
                         SizedBox(width: 6,),
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             primary: Colors.amber,
                           ),
                         onPressed: (){}, child: Text('M',style: TextStyle(fontSize: 20),)),
                         SizedBox(width: 6,),
                       ElevatedButton( style: ElevatedButton.styleFrom(
                         primary: Colors.amber,
                       ), onPressed: (){}, child: Text('L',style: TextStyle(fontSize: 20),)),
                         SizedBox(width: 6,),
                       ElevatedButton(style: ElevatedButton.styleFrom(
                         primary: Colors.amber,
                       ),onPressed: (){}, child: Text('X',style: TextStyle(fontSize: 20),)),
                         SizedBox(width: 6,),
                       ElevatedButton(style: ElevatedButton.styleFrom(
                         primary: Colors.amber,
                       ),onPressed: (){}, child: Text('XL',style: TextStyle(fontSize: 20),)),
                       ],
                     ),
                   ),
                 ),
                     
                    ],
                  ),
                  Text('required',style: TextStyle(color: Theme.of(context).errorColor,fontSize: 10),),
                ],),
                SizedBox(height: 6,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                    Text('Color:  ',style: TextStyle(fontWeight: FontWeight.w600),),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        radius: 8,backgroundColor: Colors.purple,
                      ),
                    ),
                    SizedBox(width: 6,),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        radius: 8,backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 6,),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        radius: 8,backgroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 6,),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        radius: 8,backgroundColor: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 6,),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        radius: 8,backgroundColor: Colors.green,
                      ),
                    ),
                  ],),

                  Text('required',style: TextStyle(color: Theme.of(context).errorColor,fontSize: 10,),)
                ],),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Text('Quantity'),
                    Container(
                      width: 80,
height: 30,
                     margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
// padding: EdgeInsets.symmetric(vertical: 0,horizontal: 6),
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(6)
                     ),
                      child: FittedBox(
                        child: Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              if(count>1)
                                count--;
                            });
                          }, icon:Icon(Icons.remove),),
                          Text('${count}',style: TextStyle(fontSize: 18),),
                          IconButton(onPressed: (){
                            setState(() {

                              count++;
                            });

                          }, icon:Icon(Icons.add),),

                        ],
                    ),
                      ),)
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:EdgeInsets.symmetric(horizontal: 40,vertical:0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Theme.of(context).primaryColor)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'View Details',
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            )),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                        ),
                        child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,color: Colors.white,),
                            Text('Add to cart',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
          Positioned(
              right: 3,
              top: -6,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close_rounded,
                  color: Theme.of(context).primaryColor,
                ),
              )
          )
        ],
      ),
    );
  }
}
