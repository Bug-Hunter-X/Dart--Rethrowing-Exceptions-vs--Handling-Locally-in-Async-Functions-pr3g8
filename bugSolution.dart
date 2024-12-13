```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error locally
      final errorMessage = 'Failed to load data: ${response.statusCode}';
      //Show error to the user instead of rethrowing
      print(errorMessage);
    }
  } catch (e) {
    // Handle other exceptions locally
    final errorMessage = 'An unexpected error occurred: $e';
    //Show error to the user instead of rethrowing
    print(errorMessage);
  }
}
```