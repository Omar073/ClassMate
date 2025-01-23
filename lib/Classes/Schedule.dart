class Schedule {
  final String centerID;
  final String centerName;
  final String instructorName;
  final String courseDate;
  final String courseTime;

  Schedule(
      {required this.centerID,
      required this.centerName,
      required this.instructorName,
      required this.courseDate,
      required this.courseTime});

  factory Schedule.fromMap(Map<String, dynamic> data, String documentId) {
    return Schedule(
      centerID: data['centerID'] ?? '',
      centerName: data['centerName'] ?? '',
      instructorName: data['instructorName'] ?? '',
      courseDate: data['courseDate'] ?? '',
      courseTime: data['courseTime'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'centerID': centerID,
      'centerName': centerName,
      'instructorName': instructorName,
      'courseDate': courseDate,
      'courseTime': courseTime,
    };
  }
}
