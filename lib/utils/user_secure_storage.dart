import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static final _storage = FlutterSecureStorage();

  static const _keyUser = 'userdata';
  static const _keyToken = 'jwt';

  static Future setUser(String user) async =>
      await _storage.write(key: _keyUser, value: user);

  static Future setToken(String token) async =>
      await _storage.write(key: _keyToken, value: token);

  static Future<String?> getUser() async => await _storage.read(key: _keyUser);

  static Future<String?> getToken() async =>
      await _storage.read(key: _keyToken);

  static Future clear() async => await _storage.deleteAll();
}
