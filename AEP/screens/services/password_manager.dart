import '../utils/secure_storage.dart';

class PasswordManager {
  final SecureStorage _secureStorage = SecureStorage();

  Future<void> savePassword(String key, String password) async {
    await _secureStorage.writeData(key, password);
  }

  Future<String?> retrievePassword(String key) async {
    return await _secureStorage.readData(key);
  }
}
