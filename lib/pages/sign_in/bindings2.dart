// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:firebase_chat/pages/sign_in/controller2.dart';
import 'controller2.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}