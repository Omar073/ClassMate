class CenterOBJ {
  final String centerName;
  final String centerID;
  final String contactEmail;
  final String contactPhone;
  final String location;

  CenterOBJ({
    required this.centerName,
    required this.centerID,
    required this.contactEmail,
    required this.contactPhone,
    required this.location,
  });
  
  factory CenterOBJ.fromMap(Map<String, dynamic> data, String documentId) {
    return CenterOBJ(
      centerName: data['centerName'] ?? '',
      centerID: documentId,
      contactEmail: data['contactEmail'] ?? '',
      contactPhone: data['contactPhone'] ?? '',
      location: data['location'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'centerName': centerName,
      'contactEmail': contactEmail,
      'contactPhone': contactPhone,
      'location': location,
    };
  }
}
