```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error status code
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during API call
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately based on app logic
    rethrow; // Re-throwing the exception for upper layers to handle it
  }
}
```