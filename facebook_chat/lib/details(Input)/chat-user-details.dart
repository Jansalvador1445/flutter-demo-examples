import 'package:facebook_chat/model/user-model.dart';

const User currentUser = User(
  id: 0,
  name: "Jan Salvador Sebastian",
  imgUrl:
      "https://pbs.twimg.com/profile_images/1241327793650020353/3K24fmi3_400x400.jpg",
  isOnline: true,
);

const User ava = User(
  id: 1,
  name: "Ava Michelle Cota",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BZDRhYzlhYmQtYjlkNS00Y2ExLTlkMTEtZGZkNjRkYjdjNzBjXkEyXkFqcGdeQXVyNjc5NjU3OTI@._V1_.jpg",
  isOnline: true,
);

const User liza = User(
  id: 2,
  name: "Liza Soberano",
  imgUrl:
      "https://data-starcinema.abs-cbn.com/starcinema/starcinema/media/march-2020/16/liza-soberano-business-820.jpg?ext=.jpg",
  isOnline: true,
);

const User lebron = User(
  id: 3,
  name: "LeBron James",
  imgUrl:
      "https://image-cdn.essentiallysports.com/wp-content/uploads/20200410190155/bron-james-.jpg",
  isOnline: true,
);

const User britolani = User(
  id: 4,
  name: "Britolani",
  imgUrl: "https://pbs.twimg.com/media/Coje2vbXYAEbmom.jpg",
  isOnline: false,
);

const User jordan = User(
  id: 5,
  name: "Michael Jordan",
  imgUrl:
      "https://sportshub.cbsistatic.com/i/r/2020/04/13/a691bd4c-f4ce-4ccc-8261-5835af6037e6/thumbnail/640x360/528635d0b24e7d3162feb5ca09c958eb/michael-jordan.jpg",
  isOnline: true,
);

const User dwayne = User(
  id: 6,
  name: "Dwayne 'The Rock' Johnson",
  imgUrl:
      "https://www.sheknows.com/wp-content/uploads/2019/10/dwayne-johnson.jpg",
  isOnline: true,
);

const User kobe = User(
  id: 6,
  name: "Kobe Bryant",
  imgUrl:
      "https://www.talkbasket.net/wp-content/uploads/2020/03/121207122711-kobe-bryant-smile-120712_1280x720-e1580085430197.jpg",
  isOnline: true,
);

const User sabrina = User(
  id: 7,
  name: "Sabrina Carpenter",
  imgUrl:
      "https://s3.amazonaws.com/cdn.yallemedia.com/wp-content/uploads/2018/11/03163257/Sabrina-Carpenter-chords.jpg",
  isOnline: true,
);

const List<User> favoriteUsers = [
  currentUser,
  ava,
  liza,
  lebron,
  britolani,
  jordan,
  dwayne,
  kobe,
  sabrina
];
