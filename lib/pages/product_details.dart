import 'package:flutter/material.dart';
import 'package:ecommerc_eapp/main.dart';
import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
            child: Text("ShapeYou")),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
        Container(
        height: 300.0,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.product_detail_picture),
          ),
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                widget.product_detail_name,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      "\$${widget.product_detail_old_price}",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$${widget.product_detail_new_price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      //          ===== the first buttons ========    //
      Row(
        children: [
          // ======= the size button  =======//
          Expanded(
            child: MaterialButton(
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                  return AlertDialog(
                    title: Text("Size"),
                    content: Text("Choose the size"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("Close"),),
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Size"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            ),
          ),

          // ======= the color button  =======//
          Expanded(
            child: MaterialButton(
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Color"),
                        content: Text("Pick up a Color"),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text("Close"),),
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Color"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            ),
          ),

          // ======= the Quantity button  =======//
          Expanded(
            child: MaterialButton(
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Choose the Quantity"),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text("Close"),),
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Qty"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

      //          ===== the second buttons ========    //
      Row(
          children: [
      // ======= the buy now  button  =======//
      Expanded(
      child: MaterialButton(
      onPressed: ()
      {

      },
      color: Colors.red,
      textColor: Colors.white,
      elevation: 0.2,
      child: Text("Buy Now"),
    ),
    ),

    IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){},),

    IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){},),


    ],
    ),
       Divider(),

       ListTile(
         title: Text("Product Details"),
         subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
       ),

          Divider(),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Name",
              style: TextStyle(color: Colors.grey),),),

            Padding(padding: EdgeInsets.all(5.0),
            child: Text(widget.product_detail_name),),
            ],
          ),

         //REMEMBER TO CREATE BRAND

          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Brand",
                  style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),),
            ],
          ),

          //REMEMBER TO CREATE PRODUCT CONDITION
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Condition",
                  style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Available"),),
            ],
          ),

          Divider(),
          Text("Similar Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
          // SIMILAR PRODUCTS SECTION
          Container(
            height: 360.0,
            child: Similar_products(),
          ),

    ],
    ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/products/blazer1.jpeg",
      "old_price": 129,
      "price": 89,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/dress2.jpeg",
      "old_price": 130,
      "price": 95,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/hills2.jpeg",
      "old_price": 130,
      "price": 95,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/pants1.jpg",
      "old_price": 130,
      "price": 95,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/pants2.jpeg",
      "old_price": 130,
      "price": 95,
    },
    {
      "name": "Jeans",
      "picture": "images/products/products/skt1.jpeg",
      "old_price": 130,
      "price": 95,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}


class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              //here we are passing the values of the product to product details page
                MaterialPageRoute(builder: (context) => ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),

                    Text("\$${prod_price}", style:TextStyle(color: Colors.red),),

                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


