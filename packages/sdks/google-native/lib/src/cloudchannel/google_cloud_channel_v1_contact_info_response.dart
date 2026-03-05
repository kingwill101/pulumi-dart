// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact information for a customer account.
class GoogleCloudChannelV1ContactInfoResponse {
  /// The customer account contact's display name, formatted as a combination of the customer's first and last name.
  final pulumi.Input<String> displayName;
  /// The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  final pulumi.Input<String> email;
  /// The customer account contact's first name. Optional for Team customers.
  final pulumi.Input<String> firstName;
  /// The customer account contact's last name. Optional for Team customers.
  final pulumi.Input<String> lastName;
  /// The customer account's contact phone number.
  final pulumi.Input<String> phone;
  /// Optional. The customer account contact's job title.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudChannelV1ContactInfoResponse].
  /// [displayName] The customer account contact's display name, formatted as a combination of the customer's first and last name.
  /// [email] The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  /// [firstName] The customer account contact's first name. Optional for Team customers.
  /// [lastName] The customer account contact's last name. Optional for Team customers.
  /// [phone] The customer account's contact phone number.
  /// [title] Optional. The customer account contact's job title.
  GoogleCloudChannelV1ContactInfoResponse({
    required this.displayName,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'title': title,
    };
  }

  factory GoogleCloudChannelV1ContactInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ContactInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

