import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  static Future<String> get getFilePath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  static Future<File> get getFile async {
    final path = await getFilePath;
    return File('$path/data.txt');
  }

  static Future<String> readContent() async {
    try {
      final file = await getFile;
      // Read the file
      String contents = await file.readAsString();
      // Returning the contents of the file
      return contents;
    } catch (e) {
      // If encountering an error, return
      return 'Error!';
    }
  }

  static Future<File> writeContent(String contents) async {
    final file = await getFile;
    // Write the file
    return file.writeAsString(contents);
  }
}
