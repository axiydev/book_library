/*
Created by Axmadjon Isaqov on 11:54:06 08.07.2022
© 2022 
*/
///[@axi_dev]
import '../../models/book_model.dart';

class BookService {
  List<Book> bookList = [
    Book(
        author: 'Alberto Miola',
        title: 'Flutter Complate Reference',
        createdDate: '2021',
        bookUrl: 'https://t.me/flutter_G_Two/112'),
    Book(
        author: 'Alberto Miola',
        title: 'Flutter Complate Reference',
        createdDate: '2021',
        bookUrl: 'https://t.me/flutter_G_Two/112'),
    Book(
        author: 'Alberto Miola',
        title: 'Flutter Complate Reference',
        createdDate: '2021',
        bookUrl: 'https://t.me/flutter_G_Two/112'),
    Book(
        author: 'Alberto Miola',
        title: 'Flutter Complate Reference',
        createdDate: '2021',
        bookUrl: 'https://t.me/flutter_G_Two/112'),
    Book(
        author: 'Alberto Miola',
        title: 'Flutter Complate Reference',
        createdDate: '2021',
        bookUrl:
            'https://n.ziyouz.com/books/uzbek_xalq_ogzaki_ijodi/Bozor%20Omonov%20(aytuvchi).%20Nuralining%20yoshligi%20(doston).pdf'),
  ];

  static String? getInfo(Book? book) {
    return """
Nomi::: ${book!.title}
Muallifi::: ${book.author}
Yili::: ${book.createdDate}
Manzili::: ${book.bookUrl}
""";
  }
}
