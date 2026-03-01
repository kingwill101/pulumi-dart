// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_exclusion_args_doc}
/// Arguments for getBillingAccountExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_exclusion_args_doc}
class GetBillingAccountExclusionArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> exclusionId;

  /// Creates a new [GetBillingAccountExclusionArgs].
  /// [billingAccountId] Required.
  /// [exclusionId] Required.
  GetBillingAccountExclusionArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> exclusionId,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      exclusionId = pulumi.Input.asInput<String>(exclusionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'exclusionId': exclusionId,
    };
  }

  factory GetBillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountExclusionArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      exclusionId: pulumi.Output.create<String>(map['exclusionId'] as String),
    );
  }
}

