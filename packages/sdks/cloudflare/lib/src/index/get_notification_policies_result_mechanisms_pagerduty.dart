// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPoliciesResultMechanismsPagerduty {
  /// UUID
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPoliciesResultMechanismsPagerduty].
  /// [id] UUID
  const GetNotificationPoliciesResultMechanismsPagerduty({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPoliciesResultMechanismsPagerduty.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResultMechanismsPagerduty(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
