// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

int newScore = 0;
UpdateData(List<int> score, String listName, String username) async {
  if (listName == "aniIScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "aniIScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull aniIScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "aniEScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc(username)
        .update({
      "aniEScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull aniEScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "aniHScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "aniHScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull aniHScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "sciEScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "sciEScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull sciEScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "sciIScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "sciIScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull sciIScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "sciHScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "sciHScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull sciHScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "spoEScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "spoEScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull spoEScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "spoIScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "spoIScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull spoIScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
  if (listName == "spoHScore") {
    newScore = score[score.length - 1];
    await FirebaseFirestore.instance
        .collection("User Data")
        .doc("scores")
        .update({
      "spoHScore": FieldValue.arrayUnion([newScore]),
    }).then((value) {
      print('succesfull spoHScore');
    }).onError((error, stackTrace) {
      print(error);
    });
    print(score[score.length - 1]);
  }
}

CreateDatabase(String name) {
  FirebaseFirestore.instance.collection("User Data").doc(name).set({
    "userName": "",
    "aniEScore": [0],
    "aniIScore": [0],
    "aniHScore": [0],
    "sciEScore": [0],
    "sciIScore": [0],
    "sciHScore": [0],
    "spoEScore": [0],
    "spoIScore": [0],
    "spoHScore": [0],
  }).then((value) {
    print("Database Created");
  }).onError((error, stackTrace) {
    print(error);
  });
}

UpdateName(String name) {
  FirebaseFirestore.instance.collection("User Data").doc(name).update({
    "userName": name,
  }).then((value) {
    print("Updated");
  }).onError((error, stackTrace) {
    print(error);
  });
}

Future<List<Map<String, dynamic>>> fetchDataFromFirestore() async {
  // Initialize Firestore instance
  final firestore = FirebaseFirestore.instance;

  // Reference the collection
  final collection = firestore.collection('User Data');

  // Fetch data (get all documents in this example)
  final querySnapshot = await collection.get();

  // Manipulate data (extract and format)
  final documents = querySnapshot.docs.map((doc) => doc.data()).toList();

  // Return the formatted data
  return documents;
}

void manipulation() async {
  // Call the fetch function
  final data = await fetchDataFromFirestore();

  // Process the data (example: print titles)
  for (var item in data) {
    print(item['title']);
    print('mani'); // Access 'title' field assuming it exists
  }
}
