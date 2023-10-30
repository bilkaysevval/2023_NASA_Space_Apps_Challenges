import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManagerforProtect {
  final CollectionReference protect =
      FirebaseFirestore.instance.collection('how to protect');

  Future getProtectList() async {
    List protectList = [];

    try {
      await protect.get().then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          protectList.add(doc.data());
        });
      });
      return protectList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

class HowToProtectDatabaseTitles {
  static const String climateChange =
      'Climate Change, Changing Currents and Sound/Light Pollution';
  static const String coastal = "Coastal Development and Marine Pollution";
  static const String industrial = "Industrial and Plastic Pollution";
  static const String poaching = "Poaching and Overfishing";
  static const String ship = "Ship Crash";
  static const String fishing = "Unsustainable Fishing";
  static const String nets = "Use of Nets, Fishing Rods and Fishing Tools";
}
