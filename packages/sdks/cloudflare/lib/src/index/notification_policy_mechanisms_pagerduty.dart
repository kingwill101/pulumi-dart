// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationPolicyMechanismsPagerduty {
  /// UUID
  final pulumi.Input<String?>? id;

  /// Creates a new [NotificationPolicyMechanismsPagerduty].
  /// [id] UUID
  const NotificationPolicyMechanismsPagerduty({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NotificationPolicyMechanismsPagerduty.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyMechanismsPagerduty(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
