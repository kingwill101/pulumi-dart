// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_id_token_get_account_id_token_args_doc}
/// Arguments for getAccountIdToken.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_id_token_get_account_id_token_args_doc}
class GetAccountIdTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.   Used only when using impersonation mode.
  final pulumi.Input<List<String>>? delegates;
  /// Include the verified email in the claim. Used only when using impersonation mode.
  final pulumi.Input<bool>? includeEmail;
  /// The audience claim for the `id_token`.
  final pulumi.Input<String> targetAudience;
  /// The email of the service account being impersonated.  Used only when using impersonation mode.
  final pulumi.Input<String>? targetServiceAccount;

  /// Creates a new [GetAccountIdTokenArgs].
  /// [delegates] Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.   Used only when using impersonation mode.
  /// [includeEmail] Include the verified email in the claim. Used only when using impersonation mode.
  /// [targetAudience] The audience claim for the `id_token`.
  /// [targetServiceAccount] The email of the service account being impersonated.  Used only when using impersonation mode.
  const GetAccountIdTokenArgs({
    this.delegates,
    this.includeEmail,
    required this.targetAudience,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'includeEmail': ?includeEmail,
      'targetAudience': targetAudience,
      'targetServiceAccount': ?targetServiceAccount,
    };
  }

  factory GetAccountIdTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountIdTokenArgs(
      delegates: (() { final guardedValue = map['delegates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeEmail: (() { final guardedValue = map['includeEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetAudience: pulumi.Input.fromValue(map['targetAudience'] as String),
      targetServiceAccount: (() { final guardedValue = map['targetServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

