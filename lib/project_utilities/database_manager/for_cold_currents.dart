import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManagerforColdCurrents {
  final CollectionReference cold =
      FirebaseFirestore.instance.collection('cold currents');

  Future getColdList() async {
    List coldList = [];

    try {
      await cold.get().then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          coldList.add(doc.data());
        });
      });
      return coldList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

class ColdCurrentsDatabaseTitles {
  static const String benguela = "Benguela Current";
  static const String california = "California Current";
  static const String canary = "Canary Current";
  static const String humboldt = "Humboldt Current";
  static const String labrador = "Labrador Current";
  static const String west = "West Australian Current";
  static const String oyashio = "Oyashio Current";
}
