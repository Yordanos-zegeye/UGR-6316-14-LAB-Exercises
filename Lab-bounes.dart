import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  List<String> urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];

  downloadFiles(urls);
}

Future<void> downloadFiles(List<String> urls) async {
  List<Future<void>> downloadTasks = [];

  for (String url in urls) {
    downloadTasks.add(downloadFile(url));
  }

  try {
    await Future.wait(downloadTasks);
    print('All files downloaded successfully.');
  } catch (e) {
    print('Error occurred during download: $e');
  }
}

Future<void> downloadFile(String url) async {
  final response = await http.get(Uri.parse(url));
  final fileName = url.split('/').last;

  if (response.statusCode == 200) {
    final file = File(fileName);
    var content = response.bodyBytes;
    await file.writeAsBytes(content);
    print('Downloaded: $fileName');
  } else {
    throw Exception('Failed to download file: $fileName');
  }
}
