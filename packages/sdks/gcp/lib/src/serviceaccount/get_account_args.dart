// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The Google service account ID. This must be one of:
  ///
  /// * The name of the service account within the project (e.g. `my-service`)
  ///
  /// * The fully-qualified path to a service account resource (e.g.
  /// `projects/my-project/serviceAccounts/...`)
  ///
  /// * The email address of the service account (e.g.
  /// `my-service@my-project.iam.gserviceaccount.com`)
  final pulumi.Input<String> accountId;
  /// The ID of the project that the service account is present in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetAccountArgs].
  /// [accountId] The Google service account ID. This must be one of:
  /// [project] The ID of the project that the service account is present in.
  const GetAccountArgs({
    required this.accountId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'project': ?project,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
