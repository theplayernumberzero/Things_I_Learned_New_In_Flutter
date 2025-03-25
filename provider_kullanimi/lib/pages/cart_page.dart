import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/models/product.dart';
import 'package:provider_kullanimi/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Consumer<CartProvider>(
        builder: (context, provider, _) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.8,
                child: ListView.builder(
                  itemCount: provider.items.length,
                  itemBuilder: (context, index) {
                    Product currentProduct = provider.items[index];
                    return ListTile(title: Text(currentProduct.name));
                  },
                ),
              ),
              Text("Cart total: \$${provider.getCartTotal()}"),
            ],
          );
        },
      ),
    );
  }
}
