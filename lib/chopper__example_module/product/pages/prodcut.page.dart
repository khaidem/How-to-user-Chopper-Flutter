import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:chopperdemo/chopper__example_module/example.dart';
import 'package:chopperdemo/chopper__example_module/service/chopper_client.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: FutureBuilder<Response<List<ProductModel>>>(
        future: chopper.getService<APIService>().getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.body!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data!.body![index].title),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
