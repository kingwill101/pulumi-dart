// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationAttributeOperatorOwner {
  /// Optional. Contact's name.
  final pulumi.Input<String> displayName;
  /// Required. Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [GetApplicationAttributeOperatorOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  GetApplicationAttributeOperatorOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
    };
  }

  factory GetApplicationAttributeOperatorOwner.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeOperatorOwner(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

