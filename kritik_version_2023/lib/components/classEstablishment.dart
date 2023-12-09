// ignore_for_file: file_names
import 'package:hive/hive.dart';

part 'classEstablishment.g.dart';

@HiveType(typeId: 1)
class Establishment {
  @HiveField(0)
  String pathImage = '';
  @HiveField(1)
  String name = '';
  @HiveField(2)
  String location = '';
  @HiveField(3)
  String category = '';
  @HiveField(4)
  String description = "";

  Establishment(this.pathImage, this.name, this.location, this.category,
      this.description);
}
