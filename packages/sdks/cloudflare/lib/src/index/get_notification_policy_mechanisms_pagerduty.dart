// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPolicyMechanismsPagerduty {
  /// UUID
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPolicyMechanismsPagerduty].
  /// [id] UUID
  const GetNotificationPolicyMechanismsPagerduty({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPolicyMechanismsPagerduty.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyMechanismsPagerduty(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
