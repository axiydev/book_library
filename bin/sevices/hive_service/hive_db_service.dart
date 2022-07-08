/*
Created by Axmadjon Isaqov on 11:53:59 08.07.2022
© 2022 
*/
///[@axi_dev]
import 'dart:io';

import 'package:hive/hive.dart';

import '../../models/book_model.dart';

class HiveDB {
  late Directory? dir;
  late Future<Box?> _box;
  HiveDB.init({required this.dir}) {
    Hive.init(dir!.path);
    Hive.registerAdapter(BookAdapter());
    _box = Hive.openBox('service_db');
    print('DB inited-------');
  }

  Future<Box?> get box => _box;
}
