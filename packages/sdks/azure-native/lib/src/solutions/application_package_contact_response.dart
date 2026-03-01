// ignore_for_file: unused_element, unnecessary_cast


/// The application package contact information.
class ApplicationPackageContactResponse {
  /// The contact name.
  final String? contactName;
  /// The contact email.
  final String email;
  /// The contact phone number.
  final String phone;

  /// Creates a new [ApplicationPackageContactResponse].
  /// [contactName] The contact name.
  /// [email] The contact email.
  /// [phone] The contact phone number.
  ApplicationPackageContactResponse({
    this.contactName,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'email': email,
      'phone': phone,
    };
  }

  factory ApplicationPackageContactResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageContactResponse(
      contactName: map['contactName'] == null ? null : map['contactName'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
    );
  }
}

