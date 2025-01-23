class User {
  final String uid;
  final String email;
  final String displayName;
  final String university;
  final String faculty;

  User({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.university,
    required this.faculty,
  });

  // Factory method to create a User instance from a map
  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      uid: data['uid'] ?? '',
      email: data['email'] ?? '',
      displayName: data['displayName'] ?? '',
      university: data['university'] ?? '',
      faculty: data['faculty'] ?? '',
    );
  }

  // Method to convert a User instance to a map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'university': university,
      'faculty': faculty,
    };
  }
}