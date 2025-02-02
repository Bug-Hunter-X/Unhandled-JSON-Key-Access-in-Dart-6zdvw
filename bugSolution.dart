```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      //Check for key existence before accessing
      if (jsonResponse.containsKey('data')) {
        final data = jsonResponse['data'];
        print(data); 
      } else {
        print('Key "data" not found in JSON response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on NoSuchMethodError catch (e) {
    print('Key not found in JSON response: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```