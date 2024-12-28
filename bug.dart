```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final jsonData = jsonDecode(response.body) as List;
      // Accessing the first element of the array that may not exist.
      final firstElement = jsonData[0]; 
      print('First element: $firstElement');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```