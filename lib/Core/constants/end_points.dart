import '../services/cache_helper.dart';

class EndPoints {
  static String baseUrl = SharedPref.get(key: "baseUrl") ?? "http://95.216.193.252:610";
  static String accessToken = SharedPref.get(key: "accessToken") ?? "";
  static const String loginToken = "/token";
  static const String profileData = "/api/Empdata";
}
