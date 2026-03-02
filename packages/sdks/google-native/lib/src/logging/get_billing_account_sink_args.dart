// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_sink_args_doc}
/// Arguments for getBillingAccountSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_sink_args_doc}
class GetBillingAccountSinkArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> sinkId;

  /// Creates a new [GetBillingAccountSinkArgs].
  /// [billingAccountId] Required.
  /// [sinkId] Required.
  GetBillingAccountSinkArgs({
    required this.billingAccountId,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'sinkId': sinkId,
    };
  }

  factory GetBillingAccountSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountSinkArgs(
      billingAccountId: (map['billingAccountId'] as String).input(),
      sinkId: (map['sinkId'] as String).input(),
    );
  }
}

