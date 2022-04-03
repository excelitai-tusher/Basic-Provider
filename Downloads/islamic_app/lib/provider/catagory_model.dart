import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CatagoryModel with ChangeNotifier {
  String name;
  String image;
  bool? isFavorite;

  CatagoryModel({
    required this.name,
    required this.image,
    this.isFavorite,
  });

  List<CatagoryModel> list = [
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',

    ),
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',
    ),
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',
    ),
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',
    ),
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',
    ),
    CatagoryModel(
      name: 'pink khemar',
      image: 'https://www.poran.com.bd/wp-content/uploads/2021/09/name-3-1-500x500.jpg',
    ),
  ];

  void setFavourite(int index) {
    // isFavourite=!isFavourite;
    list[index].isFavorite = list[index].isFavorite;
    notifyListeners();
  }

  List<CatagoryModel> get getList {
    return list;
  }

  void setProductDetailData(
      {required String productName,
      required String productImageUrl,
      required String productPrice}) {}
}
