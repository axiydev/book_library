import 'dart:io';

import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import 'consts/button_bot.dart';
import 'consts/consts.dart';
import 'sevices/book_service/book_service.dart';
import 'sevices/hive_service/hive_db_service.dart';

void main(List<String> arguments) async {
  final Directory dir = Directory(MyConsts.getDatabasePath);

  final db = HiveDB.init(dir: dir);
  final box = await db.box;
  box!.put('id_one', BookService().bookList.first);
  //user modeli
  final User user = await (Telegram(MyConsts.botToken)).getMe();
  //username

  final String username = user.username!;

  //teledart
  final TeleDart myBotController = TeleDart(MyConsts.botToken, Event(username));

  //botga start berish
  myBotController.start();
  print("Working bot...🤖🤖🤖🤖🤖");

  //komandalar menyusi
  myBotController.setMyCommands(BotKeyButtons.menuCommands);
  //start metodi
  myBotController.onCommand().listen((message) async {
    if (message.text!.toLowerCase() == '/start') {
      print("start -----------");
      await message.replyPhoto(MyConsts.bookLibrary,
          caption: MyConsts.captionStart,
          reply_markup: ReplyKeyboardMarkup(keyboard: BotKeyButtons.menu));
    }
    if (message.text!.toLowerCase() == '/add_book') {}
  });

  //callback
  myBotController.onCommand().listen((message) async {
    print('COMMAND:::${message.text}');
  });
//message
  myBotController.onMessage().listen((message) async {
    print("MESSAGE:::${message.text}");
    if (message.text == MyConsts.myBook) {
      print('book');
      for (var book in BookService().bookList) {
        await message.reply(BookService.getInfo(book)!);
      }
    }
    if (message.text == MyConsts.myLibrary) {
      print('libraryyyy');
      final book = await box.get('id_one');
      await message.reply(BookService.getInfo(book)!);
    }
  });
}
