import 'package:kritik_version_2023/components/data/establishment_data_grid.dart';
import 'package:kritik_version_2023/serverside/services.dart';

Future<void> initHive() async {
  final EstablishmentService establishmentServ = EstablishmentService();

  // Check if the box is empty
  int boxLength = await establishmentServ.getBoxLength();
  if (boxLength == 0) {
    // Add items only if the box is empty
    for (int i = 0; i < establishmentData.length; i++) {
      await establishmentServ.addItem(establishmentData.elementAt(i));
    }

    print("Added initial data to the Hive box.");
  } else {
    print("Hive box already contains data. Skipping addition.");
  }

  print("Finished initializing Hive.");
}
