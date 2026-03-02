// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttributesOperatorOwner {
  /// Contact's name.
  final pulumi.Input<String>? displayName;
  /// Required. Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [ServiceAttributesOperatorOwner].
  /// [displayName] Contact's name.
  /// [email] Required. Email address of the contacts.
  ServiceAttributesOperatorOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory ServiceAttributesOperatorOwner.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesOperatorOwner(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      email: (map['email'] as String).input(),
    );
  }
}

