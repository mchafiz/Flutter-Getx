class ApiService {
  Future<String> fetchTextFromApi() async {
    await Future.delayed(Duration(seconds: 2));
    return "this text is loaded from backend";
  }
}
