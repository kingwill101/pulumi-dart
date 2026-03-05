// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationAttributeBusinessOwner {
  /// Optional. Contact's name.
  final pulumi.Input<String> displayName;
  /// Required. Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [GetApplicationAttributeBusinessOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  GetApplicationAttributeBusinessOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
    };
  }

  factory GetApplicationAttributeBusinessOwner.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeBusinessOwner(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

