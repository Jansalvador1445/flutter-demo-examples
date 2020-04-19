class User {
  final int id;
  final String name;
  final String imgUrl;
  final bool isOnline;

  const User({
    this.id,
    this.name,
    this.imgUrl,
    this.isOnline = false,
  });
}
