class User {
  final int id;
  final String name;
  final String imgUrl;
  final bool isOnline;
  const User({this.id, this.name, this.imgUrl, this.isOnline = false});
}

const User currentUser =
    User(id: 0, name: 'Cam Phan', imgUrl: 'assets/images/Chris-Pratt.jpg');

const User u1 = User(
    id: 1,
    name: 'Peter lastony',
    imgUrl: 'assets/images/Chris-Pratt.jpg',
    isOnline: true);
const User u2 =
    User(id: 2, name: 'Low', imgUrl: 'assets/images/Chris-Pratt.jpg');
const User u3 =
    User(id: 3, name: 'Luffy', imgUrl: 'assets/images/Chris-Pratt.jpg');
const User u4 = User(
    id: 4,
    name: 'Peter',
    imgUrl: 'assets/images/Chris-Pratt.jpg',
    isOnline: true);
const User u5 =
    User(id: 5, name: 'Hec', imgUrl: 'assets/images/Chris-Pratt.jpg');
const User u6 = User(
    id: 6,
    name: 'Nobby',
    imgUrl: 'assets/images/Chris-Pratt.jpg',
    isOnline: true);
const User u7 = User(
    id: 7,
    name: 'Chane',
    imgUrl: 'assets/images/Chris-Pratt.jpg',
    isOnline: true);
const User u8 = User(
    id: 8,
    name: 'Linine',
    imgUrl: 'assets/images/Chris-Pratt.jpg',
    isOnline: true);
const User u9 =
    User(id: 9, name: 'Glasid', imgUrl: 'assets/images/Chris-Pratt.jpg');
const User u10 =
    User(id: 10, name: 'Nasta', imgUrl: 'assets/images/Chris-Pratt.jpg');

const List<User> favoriteUsers = [u1, u2, u3, u4, u5, u6, u7, u8];
