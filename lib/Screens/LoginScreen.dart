import 'package:clone_whatsapp/CustomUI/ButtonCard.dart';
import 'package:clone_whatsapp/Model/ChatModel.dart';
import 'package:clone_whatsapp/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Yuen",
      isGroup: false,
      currentMessage: "HI",
      time: "10.00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "GG",
      isGroup: false,
      currentMessage: "HI",
      time: "9.00",
      icon: "person.svg",
      id: 2,
    ),
     ChatModel(
      name: "XIAN",
      isGroup: false,
      currentMessage: "HI",
      time: "9.00",
      icon: "person.svg",
      id: 3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatmodels.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            sourceChat = chatmodels.removeAt(index);
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (builder) => Homescreen(
                          chatmodels: chatmodels,
                          sourchat:  sourceChat,
                        )));
          },
          child: ButtonCard(
            name: chatmodels[index].name,
            icon: Icons.person,
          ),
        ),
      ),
    );
  }
}
