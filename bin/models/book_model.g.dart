// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookAdapter extends TypeAdapter<Book> {
  @override
  final int typeId = 101;

  @override
  Book read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Book(
      author: fields[0] as String,
      title: fields[1] as String,
      createdDate: fields[2] as String,
      bookUrl: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Book obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.author)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.createdDate)
      ..writeByte(3)
      ..write(obj.bookUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
