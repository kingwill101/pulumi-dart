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
    pulumi.Output<String>? billingAccountId,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? masterBillingAccount,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? open,
  }) :
      billingAccountId = pulumi.Input.asOptionalInput<String>(billingAccountId),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      masterBillingAccount = pulumi.Input.asOptionalInput<String>(masterBillingAccount),
      name = pulumi.Input.asOptionalInput<String>(name),
      open = pulumi.Input.asOptionalInput<bool>(open);

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
      billingAccountId: map['billingAccountId'] == null ? null : pulumi.Output.create<String>(map['billingAccountId'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      masterBillingAccount: map['masterBillingAccount'] == null ? null : pulumi.Output.create<String>(map['masterBillingAccount'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      open: map['open'] == null ? null : pulumi.Output.create<bool>(map['open'] as bool),
    );
  }
}

