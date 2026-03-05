// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_access_token_get_account_access_token_args_doc}
/// Arguments for getAccountAccessToken.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_access_token_get_account_access_token_args_doc}
class GetAccountAccessTokenArgs {
  /// Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.  (e.g. `["projects/-/serviceAccounts/delegate-svc-account@project-id.iam.gserviceaccount.com"]`)
  final pulumi.Input<List<String>>? delegates;
  /// Lifetime of the impersonated token (defaults to its max: `3600s`).
  final pulumi.Input<String>? lifetime;
  /// The scopes the new credential should have (e.g. `["cloud-platform"]`)
  final pulumi.Input<List<String>> scopes;
  /// The service account _to_ impersonate (e.g. `service_B@your-project-id.iam.gserviceaccount.com`)
  final pulumi.Input<String> targetServiceAccount;

  /// Creates a new [GetAccountAccessTokenArgs].
  /// [delegates] Delegate chain of approvals needed to perform full impersonation. Specify the fully qualified service account name.  (e.g. `["projects/-/serviceAccounts/delegate-svc-account@project-id.iam.gserviceaccount.com"]`)
  /// [lifetime] Lifetime of the impersonated token (defaults to its max: `3600s`).
  /// [scopes] The scopes the new credential should have (e.g. `["cloud-platform"]`)
  /// [targetServiceAccount] The service account _to_ impersonate (e.g. `service_B@your-project-id.iam.gserviceaccount.com`)
  GetAccountAccessTokenArgs({
    this.delegates,
    this.lifetime,
    required this.scopes,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'lifetime': ?lifetime,
      'scopes': scopes,
      'targetServiceAccount': targetServiceAccount,
    };
  }

  factory GetAccountAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAccessTokenArgs(
      delegates: (() { final guardedValue = map['delegates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      targetServiceAccount: pulumi.Input.fromValue(map['targetServiceAccount'] as String),
    );
  }
}

