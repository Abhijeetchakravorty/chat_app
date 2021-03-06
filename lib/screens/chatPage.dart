import 'package:flutter/material.dart';
import '../models/chatUsersModel.dart';
import '../widgets/conversationList.dart';
class ChatPage extends StatefulWidget {
        @override
        _ChatPageState createState() => _ChatPageState();
}
class _ChatPageState extends State < ChatPage > {
        List<ChatUsers> chatUsers = [
                ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "Now"),
                ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "Yesterday"),
                ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "31 Mar"),
                ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "28 Mar",),
                ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "23 Mar",),
                ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "17 Mar"),
                ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "24 Feb"),
                ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "https://cdn-icons-png.flaticon.com/512/149/149071.png", time: "18 Feb",),
        ];
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        body: SingleChildScrollView(physics: BouncingScrollPhysics(), 
                        child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, 
                                children: < Widget > [
                                        SafeArea(child: Padding(padding: EdgeInsets.only(left: 16, right: 16, top: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: < Widget > [
                                                IconButton(onPressed: () {
                                                        Navigator.pop(context);
                                                }, icon: Icon(Icons.arrow_back, color: Colors.black, ), ),
                                                Text("Conversations", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), ),
                                                Container(padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2), height: 30, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.pink[50], ), child: Row(children: < Widget > [
                                                        Icon(Icons.add, color: Colors.pink, size: 20, ),
                                                        SizedBox(width: 2, ),
                                                        Text("Add New", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold), ),
                                                ], ), )
                                        ], ), ), ),
                                        SafeArea(child: TextField(
                                                decoration: InputDecoration(
                                                hintText: "Search...",
                                                hintStyle: TextStyle(color: Colors.grey.shade600),
                                                prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                                                filled: true,
                                                fillColor: Colors.grey.shade100,
                                                contentPadding: EdgeInsets.all(8),
                                                enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(20),
                                                        borderSide: BorderSide(
                                                        color: Colors.grey.shade100
                                                        )
                                                ),
                                                ),
                                        ),),
                                        SafeArea(child: ListView.builder(
                                                itemCount: chatUsers.length,
                                                shrinkWrap: true,
                                                padding: EdgeInsets.only(top: 16),
                                                physics: NeverScrollableScrollPhysics(),
                                                itemBuilder: (context, index){
                                                return ConversationList(
                                                name: chatUsers[index].name,
                                                messageText: chatUsers[index].messageText,
                                                imageUrl: chatUsers[index].imageURL,
                                                time: chatUsers[index].time,
                                                isMessageRead: (index == 0 || index == 3)?true:false,
                                                );
                                        },))
                                ], 
                        ), ), );
        }
}