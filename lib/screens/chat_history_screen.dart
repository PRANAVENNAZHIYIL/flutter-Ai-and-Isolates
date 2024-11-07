import 'package:flutter/material.dart';

class ChatHistoryScreen extends StatefulWidget {
  const ChatHistoryScreen({super.key});

  @override
  State<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Chat History Screen",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
    // return Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    //       centerTitle: true,
    //       title: const Text('Chat history'),
    //     ),
    //     body: ValueListenableBuilder<Box<ChatHistory>>(
    //       valueListenable: Boxes.getChatHistory().listenable(),
    //       builder: (context, box, _) {
    //         final chatHistory =
    //             box.values.toList().cast<ChatHistory>().reversed.toList();
    //         return chatHistory.isEmpty
    //             ? const EmptyHistoryWidget()
    //             : Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: ListView.builder(
    //                   itemCount: chatHistory.length,
    //                   itemBuilder: (context, index) {
    //                     final chat = chatHistory[index];
    //                     return ChatHistoryWidget(chat: chat);
    //                   },
    //                 ),
    //               );
    //       },
    //     ));
  }
}
