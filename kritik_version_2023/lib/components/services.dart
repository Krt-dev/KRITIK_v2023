import 'package:hive/hive.dart';
import "classEstablishment.dart";
import 'package:path_provider/path_provider.dart' as path_provider;

class EstablishmentService {
  final String _boxName = "establishmentBox";

  // Future<Box<Establishment>> get _box async {
  //   final appDocumentDirectory =
  //       await path_provider.getApplicationDocumentsDirectory();
  //   Hive.init(appDocumentDirectory.path);
  //   return await Hive.openBox<Establishment>(_boxName);
  // }

  Future<Box<Establishment>> get _box async {
    return await Hive.openBox<Establishment>(_boxName);
  }

  Future<void> addItem(Establishment establishment) async {
    var box = await _box;
    await box.add(establishment);
  }

  Future<List<Establishment>> getAllEstablishment() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> deleteAllEstablishments() async {
    var box = await _box;
    await box.clear();
  }

  Future<int> getBoxLength() async {
    var box = await _box;
    return box.length.toInt();
  }

  Future<bool> containsEstablishment(Establishment data) async {
    // Check if the box contains an item with the same data
    var box = await _box;
    return box.values.contains(data);
  }
}
