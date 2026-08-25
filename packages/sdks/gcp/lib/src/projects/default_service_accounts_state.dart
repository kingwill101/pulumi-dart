// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultServiceAccounts resources.
class DefaultServiceAccountsState {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  final pulumi.Input<String?>? action;
  /// The project ID where service accounts are created.
  final pulumi.Input<String?>? project;
  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  final pulumi.Input<String?>? restorePolicy;
  /// The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  final pulumi.Input<Map<String, String>?>? serviceAccounts;

  /// Creates a new [DefaultServiceAccountsState].
  /// [action] The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  /// [project] The project ID where service accounts are created.
  /// [restorePolicy] The action to be performed in the default service accounts on the resource destroy.
  /// [serviceAccounts] The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  const DefaultServiceAccountsState({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePolicy: (() { final guardedValue = map['restorePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
