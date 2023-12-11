import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kritik_version_2023/components/establishment_data_grid.dart';
import '../components/classEstablishment.dart';

ReviewService _reviewService = ReviewService();

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

  Future<void> addReview(Reviews review, Establishment establishment) async {
    var box = await _box;

    for (int i = 0; i < box.length; i++) {
      if (box.values.toList()[i] == establishment) {
        box.values.toList()[i].reviews.insert(0, review);
        _reviewService.addItem(review);
        box.put(i, establishment);
      }
    }
  }

  Future<void> deleteReview(Reviews review, Establishment establishment) async {
    var box = await _box;

    for (int i = 0; i < box.length; i++) {
      if (box.values.toList()[i] == establishment) {
        //set nako ang index sa reviews nga i edelte
        int reviewIndex = box.values.toList()[i].reviews.indexOf(review);

        if (reviewIndex != -1) {
          // ge remove na nao diri using the removeAt function sa mga list
          box.values.toList()[i].reviews.removeAt(reviewIndex);

          // Save sa box new update
          box.put(i, box.values.toList()[i]);
        }
      }
    }
  }

  Future<void> editReview(
    int index,
    Reviews review,
    TextEditingController textEditingController,
    Establishment establishment,
  ) async {
    var box = await _box;

    for (int i = 0; i < box.length; i++) {
      if (box.values.toList()[i] == establishment) {
        // Assuming the index is within the range of reviews
        if (index >= 0 && index < box.values.toList()[i].reviews.length) {
          // Update the review comment
          box.values.toList()[i].reviews[index].reviewComment =
              textEditingController.text;

          // Save the updated review back to the box
          box.put(i, box.values.toList()[i]);
        }
      }
    }
  }
}

//reviews serrvices for database hive box

class ReviewService {
  final String _boxName = "serviceBox";

  Future<Box<Reviews>> get _box async {
    return await Hive.openBox<Reviews>(_boxName);
  }

  Future<void> addItem(Reviews review) async {
    var box = await _box;
    await box.add(review);
  }

  Future<List<Reviews>> getAllReviews() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> deleteAllReviews() async {
    var box = await _box;
    await box.clear();
  }

  Future<int> getBoxLength() async {
    var box = await _box;
    return box.length.toInt();
  }

  Future<bool> containsReview(Reviews data) async {
    // check if ang box naa bay item or data na pariha ani
    var box = await _box;
    return box.values.contains(data);
  }

//make a service that allows you to add new review to an establihsment
  // Future<void> addReview(Reviews review, Establishment establishment) async {
  //   var box = await _box;

  //   for (int i = 0; i < box.length; i++) {
  //     if (box.values.toList()[i] == establishment) {
  //       box.values.toList()[i].reviews.insert(0, review);
  //     }
  //   }
  // }
}
