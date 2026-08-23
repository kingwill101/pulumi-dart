// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_sub_account_sub_account_args_doc}
/// The set of arguments for SubAccount.
/// {@endtemplate}
/// {@macro pulumi_billing_sub_account_sub_account_args_doc}
class SubAccountArgs {
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
  final pulumi.Input<String> displayName;
  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String> masterBillingAccount;

  /// Creates a new [SubAccountArgs].
  /// [deletionPolicy] If set to "RENAME_ON_DESTROY" the billing account displayName
  /// [displayName] The display name of the billing account.
  /// [masterBillingAccount] The name of the master billing account that the subaccount
  const SubAccountArgs({
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
