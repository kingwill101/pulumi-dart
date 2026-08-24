// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationPolicyMechanismsWebhook {
  /// UUID
  final pulumi.Input<String?>? id;

  /// Creates a new [NotificationPolicyMechanismsWebhook].
  /// [id] UUID
  const NotificationPolicyMechanismsWebhook({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NotificationPolicyMechanismsWebhook.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyMechanismsWebhook(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
