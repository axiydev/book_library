/*
Created by Axmadjon Isaqov on 11:54:19 08.07.2022
© 2022 
*/
///[@axi_dev]
import 'package:hive/hive.dart';
part "book_model.g.dart";

@HiveType(typeId: 101)
class Book extends HiveObject {
  @HiveField(0)
  final String author;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String createdDate;

  @HiveField(3)
  final String bookUrl;
  Book(
      {required this.author,
      required this.title,
      required this.createdDate,
      required this.bookUrl});
}
