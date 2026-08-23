// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubAccount resources.
class SubAccountState {
  /// The billing account id.
  final pulumi.Input<String>? billingAccountId;
  /// If set to "RENAME_ON_DESTROY" the billing account displayName
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "".
  ///
  /// Possible values: RENAME_ON_DESTROY, PREVENT, ABANDON, DELETE.
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
  /// [deletionPolicy] If set to "RENAME_ON_DESTROY" the billing account displayName
  /// [displayName] The display name of the billing account.
  /// [masterBillingAccount] The name of the master billing account that the subaccount
  /// [name] The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  /// [open] `true` if the billing account is open, `false` if the billing account is closed.
  const SubAccountState({
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
      billingAccountId: (() { final guardedValue = map['billingAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterBillingAccount: (() { final guardedValue = map['masterBillingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      open: (() { final guardedValue = map['open']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
