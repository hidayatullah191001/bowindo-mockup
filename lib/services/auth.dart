part of 'services.dart';

class AuthService {
  Future<UserModel> login(SignInFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrl/login'),
        body: data.toJson(),
      );

      print(res.body);

      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(jsonDecode(res.body));

        await storeCredentialToLocal(user);
        return user;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> storeCredentialToLocal(UserModel user) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: 'token', value: user.token);
      await storage.write(key: 'username', value: user.data!.userName);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clearLocalStorage() async {
    const storage = FlutterSecureStorage();
    storage.deleteAll();
  }
}
