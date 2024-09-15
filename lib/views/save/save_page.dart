import 'package:flutter/material.dart';
import 'package:grocery/views/chat/chat_list_page.dart';

class SavePage extends StatelessWidget {
  const SavePage({
    super.key,
    this.isHomePage = false,
  });

  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return const ChatsScreen();
  }
}
