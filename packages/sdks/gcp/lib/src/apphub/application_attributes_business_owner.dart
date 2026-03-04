// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAttributesBusinessOwner {
  /// Optional. Contact's name.
  final pulumi.Input<String>? displayName;

  /// Required. Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [ApplicationAttributesBusinessOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  ApplicationAttributesBusinessOwner({this.displayName, required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'email': email};
  }

  factory ApplicationAttributesBusinessOwner.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesBusinessOwner(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
