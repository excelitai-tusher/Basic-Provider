import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/catagory_model.dart';

void main() {
  runApp(const CategoryClass());
}

class CategoryClass extends StatelessWidget {
  const CategoryClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CatagoryModel>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 20),
          itemCount: CatagoryModel.,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: Text(CatagoryModel[index]["name"]),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15)),
            );
          }),
    );
  }
}



