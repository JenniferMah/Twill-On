import 'package:twill_on/models/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime stand in
  final String text; //content of message
  final bool unread; //controls

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// YOU - current user
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

//This represents current companies but can be deleted for backend
final User tmobile =
    User(id: 1, name: 'T-mobile', imageUrl: 'assets/images/tmobile.jpg');
final User delta =
    User(id: 2, name: 'Delta', imageUrl: 'assets/images/delta.jpg');
final User bestBuy =
    User(id: 3, name: 'Best Buy', imageUrl: 'assets/images/bestbuy.jpg');
final User nike = User(id: 4, name: 'Nike', imageUrl: 'assets/images/nike.jpg');

//(keep) standard data for archived tab
final User furniture = User(
    id: 5, name: 'Furniture Company', imageUrl: 'assets/images/furniture.jpg');

//replace with all some of the companies that we are actively chatting with.
List<Message> currentChats = [
  Message(
    sender: tmobile,
    time: '2:06 PM',
    text: 'I want to activate my new phone',
    unread: true,
  )
];

//(keep)standard data for archived tab
List<Message> archivedChats = [
  Message(
    sender: furniture,
    time: '10:09 PM',
    text: 'Order #1234329384 should arrive by Thursday',
    unread: true,
  )
];
// replace these with actual messages we want to display
List<Message> messages = [
  Message(
    sender: tmobile,
    time: '2:06 PM',
    text: 'Please enter a phone number?',
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '2:05 PM',
    text: 'I need some help with my phone',
    unread: true,
  ),
];
