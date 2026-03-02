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
  GoogleCloudChannelV1ContactInfo({
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
      email: map['email'] == null ? null : (map['email'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

