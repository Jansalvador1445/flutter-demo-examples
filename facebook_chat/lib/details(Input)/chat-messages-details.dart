import 'package:facebook_chat/details(Input)/chat-user-details.dart';
import 'package:facebook_chat/model/message-model.dart';

final List<Message> recentChats = [
  Message(
    content: 'Good Night, JAN!❤️',
    time: DateTime.now(),
    sender: ava,
    hasRead: false,
  ),
  Message(
    content: 'Keep Safe,Jan!❤️',
    time: DateTime.now(),
    sender: liza,
    hasRead: false,
  ),
  Message(
    content: "You're GORGEOUS, Sabrina!❤️❤️",
    time: DateTime.now(),
    sender: sabrina,
    hasRead: false,
  ),
  Message(
    content: "You have a GREAT voice, bri! ❤️",
    time: DateTime.now(),
    sender: britolani,
    hasRead: false,
  ),
  Message(
    content: "You're awesome, Lebron! You the real king!",
    time: DateTime.now(),
    sender: lebron,
    hasRead: false,
  ),
  Message(
    content: 'I miss you, Kobe! ',
    time: DateTime.now(),
    sender: kobe,
    hasRead: false,
  ),
  Message(
    content: 'GOAT! 🐐🐐🐐',
    time: DateTime.now(),
    sender: jordan,
    hasRead: false,
  ),
  Message(
    content: "WHAT'S COOKING TODAY, DWAYNE!",
    time: DateTime.now(),
    sender: dwayne,
    hasRead: false,
  ),
];

final List<Message> messages = [
  Message(
    content: 'Good Night, JAN!❤️',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
    content: 'Good Night!❤️',
    time: DateTime.now(),
    sender: ava,
  ),
  Message(
    content: 'Thanks, I already knew that! lol!',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
    content: "Haha! You're pretty, Ava!",
    time: DateTime.now(),
    sender: ava,
  ),
  Message(
    content: 'Still tall! lol',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
    content: "I'm fine.. how about you?",
    time: DateTime.now(),
    sender: ava,
  ),
  Message(
    content: 'How are you?',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
    content: 'Hi Jan!',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
    content: 'Hello Ava Michelle!',
    time: DateTime.now(),
    sender: ava,
  ),
];
