// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbilling_v1_get_billing_account_iam_policy_args_doc}
/// Arguments for getBillingAccountIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudbilling_v1_get_billing_account_iam_policy_args_doc}
class GetBillingAccountIamPolicyArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;

  /// Creates a new [GetBillingAccountIamPolicyArgs].
  /// [billingAccountId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  const GetBillingAccountIamPolicyArgs({
    required this.billingAccountId,
    this.optionsRequestedPolicyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
    };
  }

  factory GetBillingAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountIamPolicyArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

