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
