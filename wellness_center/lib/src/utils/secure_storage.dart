import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStoreMixin{

  final secureStore = new FlutterSecureStorage();

  void setSecureStore(String key, String data) async {
    await secureStore.write(key: key, value: data);
  }

  void getSecureStore(String key, Function callback) async {
    await secureStore.read(key: key).then(callback);
  }
  void delSecureStore() async {
    await secureStore.deleteAll();
  }

}