// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubAccount resources.
class SubAccountState {
  /// The billing account id.
  final pulumi.Input<String>? billingAccountId;
  /// If set to "RENAME_ON_DESTROY" the billing account display_name
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// Default is "".
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the billing account.
  final pulumi.Input<String>? displayName;
  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String>? masterBillingAccount;
  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String>? name;
  /// `true` if the billing account is open, `false` if the billing account is closed.
  final pulumi.Input<bool>? open;

  /// Creates a new [SubAccountState].
  /// [billingAccountId] The billing account id.
  /// [deletionPolicy] If set to "RENAME_ON_DESTROY" the billing account display_name
  /// [displayName] The display name of the billing account.
  /// [masterBillingAccount] The name of the master billing account that the subaccount
  /// [name] The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  /// [open] `true` if the billing account is open, `false` if the billing account is closed.
  SubAccountState({
    this.billingAccountId,
    this.deletionPolicy,
    this.displayName,
    this.masterBillingAccount,
    this.name,
    this.open,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': ?billingAccountId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'masterBillingAccount': ?masterBillingAccount,
      'name': ?name,
      'open': ?open,
    };
  }

  factory SubAccountState.fromMap(Map<String, dynamic> map) {
    return SubAccountState(
      billingAccountId: map['billingAccountId'] == null ? null : (map['billingAccountId']! as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      masterBillingAccount: map['masterBillingAccount'] == null ? null : (map['masterBillingAccount']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      open: map['open'] == null ? null : (map['open']! as bool).input(),
    );
  }
}

