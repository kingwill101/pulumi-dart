// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact information for a customer account.
class GoogleCloudChannelV1ContactInfo {
  /// The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  final pulumi.Input<String>? email;
  /// The customer account contact's first name. Optional for Team customers.
  final pulumi.Input<String>? firstName;
  /// The customer account contact's last name. Optional for Team customers.
  final pulumi.Input<String>? lastName;
  /// The customer account's contact phone number.
  final pulumi.Input<String>? phone;
  /// Optional. The customer account contact's job title.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudChannelV1ContactInfo].
  /// [email] The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  /// [firstName] The customer account contact's first name. Optional for Team customers.
  /// [lastName] The customer account contact's last name. Optional for Team customers.
  /// [phone] The customer account's contact phone number.
  /// [title] Optional. The customer account contact's job title.
  const GoogleCloudChannelV1ContactInfo({
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'phone': ?phone,
      'title': ?title,
    };
  }

  factory GoogleCloudChannelV1ContactInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ContactInfo(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

