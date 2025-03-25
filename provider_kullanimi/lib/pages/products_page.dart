import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/constants/consts.dart';
import 'package:provider_kullanimi/models/product.dart';
import 'package:provider_kullanimi/pages/cart_page.dart';
import 'package:provider_kullanimi/providers/cart_provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //tree de bulduğu ilk CartProvider ı çeker
    //cartProvider çalıştığında build metodu yeniden çalışır. Yerine consumer da kullanabilirsin
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Consts.products.length,
        itemBuilder: (context, index) {
          Product currentProduct = Consts.products[index];
          return ListTile(
            leading: Container(
              width: 24,
              height: 24,
              color: currentProduct.color,
            ),
            title: Text(currentProduct.name),
            trailing: Checkbox(
              value: cartProvider.items.contains(currentProduct),
              onChanged: (value) {
                //provider içindeki verinin değerini değiştirme
                if (value == true) {
                  cartProvider.addItem(currentProduct);
                } else {
                  cartProvider.removeItem(currentProduct);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
