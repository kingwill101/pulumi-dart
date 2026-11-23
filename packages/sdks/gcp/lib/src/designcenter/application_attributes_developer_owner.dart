// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAttributesDeveloperOwner {
  /// Contact's name.
  final pulumi.Input<String?>? displayName;
  /// Email address of the contact.
  final pulumi.Input<String> email;

  /// Creates a new [ApplicationAttributesDeveloperOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contact.
  const ApplicationAttributesDeveloperOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory ApplicationAttributesDeveloperOwner.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesDeveloperOwner(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
