part of rest_api;

class UserService {
  User getUserLogin() {
    // sample data
    return User(image: AssetImage(ImageRaster.logoGiaDeveloper), name: "gia");
  }
}

class User {
  final ImageProvider image;
  final String name;

  User({
    required this.image,
    required this.name,
  });
}
