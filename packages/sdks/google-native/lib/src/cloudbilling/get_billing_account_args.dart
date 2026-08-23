// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbilling_v1_get_billing_account_args_doc}
/// Arguments for getBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudbilling_v1_get_billing_account_args_doc}
class GetBillingAccountArgs {
  final pulumi.Input<String> billingAccountId;

  /// Creates a new [GetBillingAccountArgs].
  /// [billingAccountId] Required.
  const GetBillingAccountArgs({
    required this.billingAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
    };
  }

  factory GetBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
    );
  }
}
