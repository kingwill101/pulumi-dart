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
    required this.billingAccountName,
    required this.billingProfileName,
    required this.invoiceSectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': invoiceSectionName,
    };
  }

  factory GetMcaAccountScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetMcaAccountScopeArgs(
      billingAccountName: (map['billingAccountName'] as String).input(),
      billingProfileName: (map['billingProfileName'] as String).input(),
      invoiceSectionName: (map['invoiceSectionName'] as String).input(),
    );
  }
}

