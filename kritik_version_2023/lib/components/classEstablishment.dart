// ignore_for_file: file_names
import 'package:hive/hive.dart';

class Establishment {
  String pathImage = '';
  String name = '';
  String location = '';
  String category = '';
  String description = "";

  String address = "";
  double starRating = 0.0;

  Establishment(this.pathImage, this.name, this.location, this.category,
      this.description, this.address, this.starRating);
}
