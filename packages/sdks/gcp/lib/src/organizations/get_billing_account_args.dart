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
  /// &gt; **NOTE:** One of `billingAccount` or `displayName` must be specified.
  final pulumi.Input<bool>? lookupProjects;
  /// `true` if the billing account is open, `false` if the billing account is closed.
  final pulumi.Input<bool>? open;

  /// Creates a new [GetBillingAccountArgs].
  /// [billingAccount] The name of the billing account in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  /// [displayName] The display name of the billing account.
  /// [lookupProjects] `true` if projects associated with the billing account should be read, `false` if this step
  /// [open] `true` if the billing account is open, `false` if the billing account is closed.
  const GetBillingAccountArgs({
    this.billingAccount,
    this.displayName,
    this.lookupProjects,
    this.open,
  });

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
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookupProjects: (() { final guardedValue = map['lookupProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      open: (() { final guardedValue = map['open']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
