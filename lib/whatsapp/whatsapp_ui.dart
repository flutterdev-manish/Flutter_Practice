import 'package:flutter/material.dart';

class WhatsAppHomePage extends StatefulWidget {
  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('WhatsApp',
        style: TextStyle(color: Colors.green,fontSize: 28),),
        actions: [
          const SizedBox(height: 10,),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined,color: Colors.black,),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.search,color: Colors.black,),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert,color: Colors.black,),
            onPressed: () {
              // Implement menu functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of chats
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            title: Text('Contact $index',style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            subtitle: Text('Last message $index'),
            trailing: const Text('12:34 PM'), // Replace with actual time
            onTap: () {
              // Implement chat opening functionality
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
        onPressed: () {
          // Implement new chat functionality
        },
        child: const Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
