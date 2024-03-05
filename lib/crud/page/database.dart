import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethod {
  Future addUserDetails(Map<String, dynamic> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc()
        .set(userInfoMap);
  }

  Future<QuerySnapshot> getUserInfo(String name) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .where("First Name", isEqualTo: name)
        .get();
  }

  Future updateUserData(String age, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc()
        .update({"Age": age});
  }

  Future deleteUserData(String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .delete();
  }
}
