// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPolicyMechanismsWebhook {
  /// UUID
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPolicyMechanismsWebhook].
  /// [id] UUID
  const GetNotificationPolicyMechanismsWebhook({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPolicyMechanismsWebhook.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyMechanismsWebhook(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
