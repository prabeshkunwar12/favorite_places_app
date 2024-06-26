import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  final String id;
  final String name;
  final File image;
  Place({required this.name, required this.image}) : id = uuid.v4();
}
