// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadAttributesOperatorOwner {
  /// Contact's name.
  final pulumi.Input<String>? displayName;
  /// Email address of the contacts.
  final pulumi.Input<String> email;

  /// Creates a new [WorkloadAttributesOperatorOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contacts.
  WorkloadAttributesOperatorOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory WorkloadAttributesOperatorOwner.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesOperatorOwner(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: (map['email'] as String).input(),
    );
  }
}

