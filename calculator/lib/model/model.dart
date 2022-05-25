import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class Model extends HiveObject {
  @HiveField(0)
  late String equation;

  @HiveField(1)
  late String ans;
}
