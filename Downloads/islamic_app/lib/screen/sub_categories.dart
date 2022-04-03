import 'package:flutter/material.dart';
import 'package:islamic_app/screen/category_class.dart';
import 'dropdownmenu.dart';

class SubCategory extends StatefulWidget {
  const SubCategory({Key? key}) : super(key: key);

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                  child: Image(
                      image:
                          AssetImage("images/full-shot-women-high-five 1.png"))),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
                TextButton(
                    child: Text(
                      'Modest Fashion',
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }),
              ],
            ),
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
                        DropDownMenu(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CategoryClass(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
