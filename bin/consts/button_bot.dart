import 'package:teledart/model.dart';

import 'consts.dart';

class BotKeyButtons {
  static final List<List<KeyboardButton>> menu = [
    [
      KeyboardButton(text: MyConsts.myBook),
      KeyboardButton(text: MyConsts.myLibrary)
    ],
    [
      KeyboardButton(text: MyConsts.myTopTen),
      KeyboardButton(text: MyConsts.importantLinks)
    ],
  ];

  static final List<BotCommand> menuCommands = [
    BotCommand(command: '/start', description: 'start bot 🤖'),
    BotCommand(command: '/add_book', description: 'Kitob qoshish 📕'),
    BotCommand(command: '/search', description: 'search'),
    BotCommand(command: '/info', description: 'Kutubxona bot'),
  ];
}
