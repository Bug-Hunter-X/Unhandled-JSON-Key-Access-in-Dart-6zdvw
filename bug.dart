```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key will throw an error
      final data = jsonResponse['nonExistentKey']; 
      print(data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // It's crucial to handle the exception here properly. For example, you might want to rethrow it,
    // log it, or show an error message to the user. Simply printing is often not enough
  }
}
```