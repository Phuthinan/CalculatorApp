import 'package:calculator/model/model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Model> getModel() => Hive.box<Model>('models');
}
