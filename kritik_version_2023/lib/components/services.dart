import 'package:hive/hive.dart';
import '../components/classEstablishment.dart';

class EstablishmentService {
  final String _boxName = "establishmentBox";

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

//make a service that allows you to add new review to an establihsment
  Future<void> addReview(Reviews review, Establishment establishment) async {
    var box = await _box;

    for (int i = 0; i < box.length; i++) {
      if (box.values.toList()[i] == establishment) {
        box.values.toList()[i].reviews.insert(0, review);
      }
    }
  }
}
