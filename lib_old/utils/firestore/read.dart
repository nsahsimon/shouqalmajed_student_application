import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:studentapp/models/course.dart';

Future<List<Course>> getAllCourses() async{
  List<Course> courses = [];
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  List<dynamic> courseIds = await getCourseIds();

  for(var courseId in courseIds) {
    DocumentSnapshot courseDoc = await db.collection("courses").doc("$courseId").get();
    courses.add(Course.fromfirestore(courseDoc));
  }
  // QuerySnapshot courseSnapshots = await db.collection("courses").get();
  // List<QueryDocumentSnapshot> courseDocs = courseSnapshots.docs;
  // for(QueryDocumentSnapshot doc in courseDocs) {
  //   courses.add(Course.fromfirestore(doc));
  // }
  return courses;
}


Future<List<dynamic>> getCourseIds() async {
  List<dynamic> studsCourseIds = [];
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  try{
    DocumentSnapshot coursesSnapshot = await db.collection("students").doc(auth.currentUser!.uid).get();
    print((coursesSnapshot.data() as Map<String, dynamic>)["courses"]);
    studsCourseIds = (coursesSnapshot.data() as Map<String, dynamic>)["courses"];
    return studsCourseIds;
  }catch(e) {
    debugPrint("$e");
    debugPrint("Failed to get the course ids for this student");
    return [];
  }


}
