// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_mca_account_scope_get_mca_account_scope_args_doc}
/// Arguments for getMcaAccountScope.
/// {@endtemplate}
/// {@macro pulumi_billing_get_mca_account_scope_get_mca_account_scope_args_doc}
class GetMcaAccountScopeArgs {
  /// The Billing Account Name of the MCA account.
  final pulumi.Input<String> billingAccountName;
  /// The Billing Profile Name in the above Billing Account.
  final pulumi.Input<String> billingProfileName;
  /// The Invoice Section Name in the above Billing Profile.
  final pulumi.Input<String> invoiceSectionName;

  /// Creates a new [GetMcaAccountScopeArgs].
  /// [billingAccountName] The Billing Account Name of the MCA account.
  /// [billingProfileName] The Billing Profile Name in the above Billing Account.
  /// [invoiceSectionName] The Invoice Section Name in the above Billing Profile.
  GetMcaAccountScopeArgs({
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> billingProfileName,
    required pulumi.Output<String> invoiceSectionName,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      invoiceSectionName = pulumi.Input.asInput<String>(invoiceSectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': invoiceSectionName,
    };
  }

  factory GetMcaAccountScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetMcaAccountScopeArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingProfileName: pulumi.Output.create<String>(map['billingProfileName'] as String),
      invoiceSectionName: pulumi.Output.create<String>(map['invoiceSectionName'] as String),
    );
  }
}

