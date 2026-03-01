// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_mpa_account_scope_get_mpa_account_scope_args_doc}
/// Arguments for getMpaAccountScope.
/// {@endtemplate}
/// {@macro pulumi_billing_get_mpa_account_scope_get_mpa_account_scope_args_doc}
class GetMpaAccountScopeArgs {
  /// The Billing Account Name of the MPA account.
  final pulumi.Input<String> billingAccountName;
  /// The Customer Name in the above Billing Account.
  final pulumi.Input<String> customerName;

  /// Creates a new [GetMpaAccountScopeArgs].
  /// [billingAccountName] The Billing Account Name of the MPA account.
  /// [customerName] The Customer Name in the above Billing Account.
  GetMpaAccountScopeArgs({
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> customerName,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      customerName = pulumi.Input.asInput<String>(customerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'customerName': customerName,
    };
  }

  factory GetMpaAccountScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetMpaAccountScopeArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      customerName: pulumi.Output.create<String>(map['customerName'] as String),
    );
  }
}

