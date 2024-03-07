import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseCall {
  Future addUserDetails(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("user")
        .doc(id)
        .set(userInfoMap);
  }
}
