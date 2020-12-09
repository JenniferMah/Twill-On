import 'package:twill_on/models/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime stand in
  final String text; //content of message
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

// USERS
final User tmobile =
    User(id: 1, name: 'T-mobile', imageUrl: 'assets/images/tmobile.jpg');
final User delta =
    User(id: 2, name: 'Delta', imageUrl: 'assets/images/delta.jpg');
final User bestBuy =
    User(id: 3, name: 'Best Buy', imageUrl: 'assets/images/bestbuy.jpg');
final User nike = User(id: 4, name: 'Nike', imageUrl: 'assets/images/nike.jpg');

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: tmobile,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Message(
    sender: delta,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Message(
    sender: bestBuy,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  Message(
    sender: nike,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  )
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: tmobile,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    unread: true,
  ),
  Message(
    sender: tmobile,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    unread: true,
  ),
  Message(
    sender: tmobile,
    time: '3:15 PM',
    text: 'All the food',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    unread: true,
  ),
  Message(
    sender: tmobile,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    unread: true,
  ),
];
