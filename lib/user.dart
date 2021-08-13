class User {
  final String imagePath;
  final String name;
  final String email;
  final String city;
  final String mobile;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.city,
    required this.mobile,
  });

  User copy({
    String? imagePath,
    String? name,
    String? email,
    String? city,
    String? mobile,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        city: city ?? this.city,
        mobile: mobile ?? this.mobile,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        city: json['city'],
        mobile: json['mobile'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'city': city,
        'mobile': mobile,
      };
}
