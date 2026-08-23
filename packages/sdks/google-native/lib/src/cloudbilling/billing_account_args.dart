// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbilling_v1_billing_account_args_doc}
/// The set of arguments for BillingAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudbilling_v1_billing_account_args_doc}
class BillingAccountArgs {
  /// The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  final pulumi.Input<String>? displayName;
  /// If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  final pulumi.Input<String>? masterBillingAccount;
  /// Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  final pulumi.Input<String>? parent;

  /// Creates a new [BillingAccountArgs].
  /// [displayName] The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  /// [masterBillingAccount] If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  /// [parent] Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  const BillingAccountArgs({
    this.displayName,
    this.masterBillingAccount,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'masterBillingAccount': ?masterBillingAccount,
      'parent': ?parent,
    };
  }

  factory BillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterBillingAccount: (() { final guardedValue = map['masterBillingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
