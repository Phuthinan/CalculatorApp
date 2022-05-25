import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  Future<String> get getFilePath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get getFile async {
    final path = await getFilePath;
    print('hea');

    return File('$path/data.txt');
  }

  Future<String> readContent() async {
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

  Future<File> writeContent(String contents) async {
    final file = await getFile;
    // Write the file
    return file.writeAsString(contents, flush: false);
  }
}
