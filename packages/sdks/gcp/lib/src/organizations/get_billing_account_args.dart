// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_billing_account_get_billing_account_args_doc}
/// Arguments for getBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_billing_account_get_billing_account_args_doc}
class GetBillingAccountArgs {
  /// The name of the billing account in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  final pulumi.Input<String>? billingAccount;
  /// The display name of the billing account.
  final pulumi.Input<String>? displayName;
  /// `true` if projects associated with the billing account should be read, `false` if this step
  /// should be skipped. Setting `false` may be useful if the user permissions do not allow listing projects. Defaults to `true`.
  ///
  /// > **NOTE:** One of `billing_account` or `display_name` must be specified.
  final pulumi.Input<bool>? lookupProjects;
  /// `true` if the billing account is open, `false` if the billing account is closed.
  final pulumi.Input<bool>? open;

  /// Creates a new [GetBillingAccountArgs].
  /// [billingAccount] The name of the billing account in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  /// [displayName] The display name of the billing account.
  /// [lookupProjects] `true` if projects associated with the billing account should be read, `false` if this step
  /// [open] `true` if the billing account is open, `false` if the billing account is closed.
  GetBillingAccountArgs({
    pulumi.Output<String>? billingAccount,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? lookupProjects,
    pulumi.Output<bool>? open,
  }) :
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      lookupProjects = pulumi.Input.asOptionalInput<bool>(lookupProjects),
      open = pulumi.Input.asOptionalInput<bool>(open);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'displayName': ?displayName,
      'lookupProjects': ?lookupProjects,
      'open': ?open,
    };
  }

  factory GetBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountArgs(
      billingAccount: map['billingAccount'] == null ? null : pulumi.Output.create<String>(map['billingAccount'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      lookupProjects: map['lookupProjects'] == null ? null : pulumi.Output.create<bool>(map['lookupProjects'] as bool),
      open: map['open'] == null ? null : pulumi.Output.create<bool>(map['open'] as bool),
    );
  }
}

