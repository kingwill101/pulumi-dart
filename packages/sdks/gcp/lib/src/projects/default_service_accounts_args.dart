// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_default_service_accounts_default_service_accounts_args_doc}
/// The set of arguments for DefaultServiceAccounts.
/// {@endtemplate}
/// {@macro pulumi_projects_default_service_accounts_default_service_accounts_args_doc}
class DefaultServiceAccountsArgs {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  final pulumi.Input<String> action;
  /// The project ID where service accounts are created.
  final pulumi.Input<String> project;
  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  final pulumi.Input<String>? restorePolicy;

  /// Creates a new [DefaultServiceAccountsArgs].
  /// [action] The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  /// [project] The project ID where service accounts are created.
  /// [restorePolicy] The action to be performed in the default service accounts on the resource destroy.
  DefaultServiceAccountsArgs({
    required this.action,
    required this.project,
    this.restorePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'project': project,
      'restorePolicy': ?restorePolicy,
    };
  }

  factory DefaultServiceAccountsArgs.fromMap(Map<String, dynamic> map) {
    return DefaultServiceAccountsArgs(
      action: (map['action'] as String).input(),
      project: (map['project'] as String).input(),
      restorePolicy: map['restorePolicy'] == null ? null : (map['restorePolicy']! as String).input(),
    );
  }
}

