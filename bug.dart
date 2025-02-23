```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug is likely to occur
      final jsonData = jsonDecode(response.body); //If the response isn't valid JSON, this will throw an exception
       //Process jsonData
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // This will catch both JSON format exceptions and network errors
  }
}
```