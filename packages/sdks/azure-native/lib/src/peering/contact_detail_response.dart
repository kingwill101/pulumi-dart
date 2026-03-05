// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The contact detail class.
class ContactDetailResponse {
  /// The e-mail address of the contact.
  final pulumi.Input<String>? email;
  /// The phone number of the contact.
  final pulumi.Input<String>? phone;
  /// The role of the contact.
  final pulumi.Input<String>? role;

  /// Creates a new [ContactDetailResponse].
  /// [email] The e-mail address of the contact.
  /// [phone] The phone number of the contact.
  /// [role] The role of the contact.
  ContactDetailResponse({
    this.email,
    this.phone,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'phone': ?phone,
      'role': ?role,
    };
  }

  factory ContactDetailResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailResponse(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

