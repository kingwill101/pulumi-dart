// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationPolicyMechanismsEmail {
  /// The email address
  final pulumi.Input<String?>? id;

  /// Creates a new [NotificationPolicyMechanismsEmail].
  /// [id] The email address
  const NotificationPolicyMechanismsEmail({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NotificationPolicyMechanismsEmail.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyMechanismsEmail(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
