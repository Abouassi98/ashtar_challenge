import 'package:ashtar_challenge/core/routing/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../model/user_model.dart';
import '../sevices/firestore_user.dart';
import '../sevices/local_storage_user.dart';

class AuthViewModel extends GetxController {
  String? email, password, name;
  final Rxn<UserModel?> _currentUser = Rxn<UserModel?>();

  UserModel? get currentUser => _currentUser.value;
  final _auth = FirebaseAuth.instance;

  void signInWithEmailAndPassword(BuildContext context) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((user) {
        FirestoreUser().getUserFromFirestore(user.user!.uid).then((doc) {
          saveUserLocal(
              UserModel.fromJson(doc.data() as Map<dynamic, dynamic>));
        });
      }).then((value) async => const HomeRoute().go(context));
    } catch (error) {
      String errorMessage =
          error.toString().substring(error.toString().indexOf(' ') + 1);
      Fluttertoast.showToast(msg: errorMessage, webPosition: "center");
    }
  }

  void signOut(BuildContext context) async {
    try {
      await LocalStorageUser.clearUserData();
      await _auth.signOut().then((value) => const LoginViewRoute().go(context));
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  void saveUser(UserCredential userCredential) async {
    UserModel userModel = UserModel(
      userId: userCredential.user!.uid,
      email: userCredential.user!.email!,
      name: name == null ? userCredential.user!.displayName! : name!,
      pic: userCredential.user!.photoURL == null
          ? 'default'
          : "${userCredential.user!.photoURL!}?width=400",
    );
    FirestoreUser().addUserToFirestore(userModel);
    saveUserLocal(userModel);
  }

  Future<UserModel?> getCurrentUser() async {
    _currentUser.value = await LocalStorageUser.getUserData();
    return _currentUser.value;
  }

  void saveUserLocal(UserModel userModel) async {
    LocalStorageUser.setUserData(userModel);
  }
}
