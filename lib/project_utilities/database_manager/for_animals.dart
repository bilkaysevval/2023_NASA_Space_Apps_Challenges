import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManagerforAnimals {
  final CollectionReference animals =
      FirebaseFirestore.instance.collection('animals');

  Future getAnimalsList() async {
    List animalsList = [];

    try {
      await animals.get().then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          animalsList.add(doc.data());
        });
      });
      return animalsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

class AnimalsDatabaseTitles {
  static const String sName = "Scientific Name";
  static const String habitat = "Habitat";
  static const String living = "Remaining Individuals Number";
  static const String characteristic = "Characteristic";
  static const String reason = "Reason for Extinction";
}
