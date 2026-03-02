// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The application package contact information.
class ApplicationPackageContactResponse {
  /// The contact name.
  final pulumi.Input<String>? contactName;
  /// The contact email.
  final pulumi.Input<String> email;
  /// The contact phone number.
  final pulumi.Input<String> phone;

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
      contactName: map['contactName'] == null ? null : (map['contactName'] as String).input(),
      email: (map['email'] as String).input(),
      phone: (map['phone'] as String).input(),
    );
  }
}

