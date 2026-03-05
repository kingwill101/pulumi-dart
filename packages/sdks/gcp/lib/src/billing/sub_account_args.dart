// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_sub_account_sub_account_args_doc}
/// The set of arguments for SubAccount.
/// {@endtemplate}
/// {@macro pulumi_billing_sub_account_sub_account_args_doc}
class SubAccountArgs {
  /// If set to "RENAME_ON_DESTROY" the billing account display_name
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// Default is "".
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the billing account.
  final pulumi.Input<String> displayName;
  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String> masterBillingAccount;

  /// Creates a new [SubAccountArgs].
  /// [deletionPolicy] If set to "RENAME_ON_DESTROY" the billing account display_name
  /// [displayName] The display name of the billing account.
  /// [masterBillingAccount] The name of the master billing account that the subaccount
  SubAccountArgs({
    this.deletionPolicy,
    required this.displayName,
    required this.masterBillingAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'masterBillingAccount': masterBillingAccount,
    };
  }

  factory SubAccountArgs.fromMap(Map<String, dynamic> map) {
    return SubAccountArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      masterBillingAccount: pulumi.Input.fromValue(map['masterBillingAccount'] as String),
    );
  }
}

