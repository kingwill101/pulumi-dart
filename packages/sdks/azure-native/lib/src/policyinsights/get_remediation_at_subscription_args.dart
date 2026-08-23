// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_subscription_args_doc}
/// Arguments for getRemediationAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_subscription_args_doc}
class GetRemediationAtSubscriptionArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;

  /// Creates a new [GetRemediationAtSubscriptionArgs].
  /// [remediationName] The name of the remediation.
  const GetRemediationAtSubscriptionArgs({
    required this.remediationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
    };
  }

  factory GetRemediationAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtSubscriptionArgs(
      remediationName: pulumi.Input.fromValue(map['remediationName'] as String),
    );
  }
}
