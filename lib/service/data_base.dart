import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseCall {
  Future addUserDetails(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("user")
        .doc(id)
        .set(userInfoMap);
  }

  Future<QuerySnapshot> getUserByEmail(String email) async {
    return await FirebaseFirestore.instance
        .collection("user")
        .where("email", isEqualTo: email)
        .get();
  }

  Future<QuerySnapshot> search(String username) async {
    return await FirebaseFirestore.instance
        .collection("user")
        .where("Searchkey", isEqualTo: username.substring(0, 1).toUpperCase())
        .get();
  }
}
