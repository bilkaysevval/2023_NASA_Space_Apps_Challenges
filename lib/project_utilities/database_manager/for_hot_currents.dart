import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManagerforHotCurrents {
  final CollectionReference hot =
      FirebaseFirestore.instance.collection('hot currents');

  Future getHotList() async {
    List hotList = [];

    try {
      await hot.get().then((querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          hotList.add(doc.data());
        });
      });
      return hotList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

class HotCurrentsDatabaseTitles {
  static const String alaska = "Alaska Current";
  static const String brazil = "Brazil Current";
  static const String east = "Eastern Australia Current";
  static const String gulfStream = "Gulf Stream Current";
  static const String kuroshio = "Kuroshio Current";
  static const String mozambique = "Mozambique Current";
}
