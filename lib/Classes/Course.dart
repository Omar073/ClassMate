class Course {
  final String courseName;
  final String courseCode;
  final String courseID;
  bool isFollowing; // Remove 'final' to allow changes
  final String courseDescription;
  final String material;

  Course(
      {required this.courseName,
      required this.courseCode,
      required this.courseID,
      required this.isFollowing,
      required this.courseDescription,
      required this.material // Include the boolean field
      });

  factory Course.fromMap(Map<String, dynamic> data, String documentId) {
    return Course(
      courseName: data['courseName'] ?? '',
      courseCode: data['courseCode'] ?? '',
      courseID: documentId,
      isFollowing: data['isFollowing'] ?? false,
      courseDescription: data['courseDescription'] ?? '',
      material: data['material'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      'courseID': courseID,
      'isFollowing': isFollowing,
      'courseDescription': courseDescription,
      'material': material,
    };
  }
}
