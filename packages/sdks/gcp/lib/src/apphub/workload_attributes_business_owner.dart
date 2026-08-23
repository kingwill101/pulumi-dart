// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadAttributesBusinessOwner {
  /// Contact's name.
  final pulumi.Input<String>? displayName;
  /// Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [WorkloadAttributesBusinessOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contacts.
  const WorkloadAttributesBusinessOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory WorkloadAttributesBusinessOwner.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesBusinessOwner(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
