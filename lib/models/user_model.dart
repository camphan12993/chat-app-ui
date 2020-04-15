class User {
  final int id;
  final String name;
  final String imgUrl;
  final bool isOnline;
  const User({this.id, this.name, this.imgUrl, this.isOnline = false});
}

const User currentUser =
    User(id: 0, name: 'Cam Phan', imgUrl: 'https://i.pravatar.cc/300');

const User u1 = User(
    id: 1,
    name: 'Peter lastony',
    imgUrl: 'https://i.pravatar.cc/300?img=1',
    isOnline: true);
const User u2 =
    User(id: 2, name: 'Low', imgUrl: 'https://i.pravatar.cc/300?img=2');
const User u3 =
    User(id: 3, name: 'Luffy', imgUrl: 'https://i.pravatar.cc/300?img=3');
const User u4 = User(
    id: 4,
    name: 'Peter',
    imgUrl: 'https://i.pravatar.cc/300?img=4',
    isOnline: true);
const User u5 =
    User(id: 5, name: 'Hec', imgUrl: 'https://i.pravatar.cc/300?img=5');
const User u6 = User(
    id: 6,
    name: 'Nobby',
    imgUrl: 'https://i.pravatar.cc/300?img=6',
    isOnline: true);
const User u7 = User(
    id: 7,
    name: 'Chane',
    imgUrl: 'https://i.pravatar.cc/300?img=7',
    isOnline: true);
const User u8 = User(
    id: 8,
    name: 'Linine',
    imgUrl: 'https://i.pravatar.cc/300?img=8',
    isOnline: true);
const User u9 =
    User(id: 9, name: 'Glasid', imgUrl: 'https://i.pravatar.cc/300?img=9');
const User u10 =
    User(id: 10, name: 'Nasta', imgUrl: 'https://i.pravatar.cc/300?img=10');

const List<User> favoriteUsers = [u1, u2, u3, u4, u5, u6, u7, u8];
