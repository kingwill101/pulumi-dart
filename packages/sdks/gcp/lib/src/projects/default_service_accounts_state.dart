// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultServiceAccounts resources.
class DefaultServiceAccountsState {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  final pulumi.Input<String>? action;
  /// The project ID where service accounts are created.
  final pulumi.Input<String>? project;
  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  final pulumi.Input<String>? restorePolicy;
  /// The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  final pulumi.Input<Map<String, String>>? serviceAccounts;

  /// Creates a new [DefaultServiceAccountsState].
  /// [action] The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  /// [project] The project ID where service accounts are created.
  /// [restorePolicy] The action to be performed in the default service accounts on the resource destroy.
  /// [serviceAccounts] The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  DefaultServiceAccountsState({
    this.action,
    this.project,
    this.restorePolicy,
    this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'project': ?project,
      'restorePolicy': ?restorePolicy,
      'serviceAccounts': ?serviceAccounts,
    };
  }

  factory DefaultServiceAccountsState.fromMap(Map<String, dynamic> map) {
    return DefaultServiceAccountsState(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      restorePolicy: map['restorePolicy'] == null ? null : (map['restorePolicy'] as String).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : ((map['serviceAccounts'] as Map).cast<String, String>()).input(),
    );
  }
}

