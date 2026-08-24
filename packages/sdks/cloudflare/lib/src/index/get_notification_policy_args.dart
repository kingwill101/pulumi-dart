// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_notification_policy_get_notification_policy_args_doc}
/// Arguments for getNotificationPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_notification_policy_get_notification_policy_args_doc}
class GetNotificationPolicyArgs {
  /// The account id
  final pulumi.Input<String?>? accountId;
  /// The unique identifier of a notification policy
  final pulumi.Input<String> policyId;

  /// Creates a new [GetNotificationPolicyArgs].
  /// [accountId] The account id
  /// [policyId] The unique identifier of a notification policy
  const GetNotificationPolicyArgs({
    this.accountId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'policyId': policyId,
    };
  }

  factory GetNotificationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
