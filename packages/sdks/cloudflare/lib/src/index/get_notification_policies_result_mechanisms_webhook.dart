// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPoliciesResultMechanismsWebhook {
  /// UUID
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPoliciesResultMechanismsWebhook].
  /// [id] UUID
  const GetNotificationPoliciesResultMechanismsWebhook({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPoliciesResultMechanismsWebhook.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResultMechanismsWebhook(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
