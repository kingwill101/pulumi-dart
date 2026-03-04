// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_get_replication_recovery_plan_get_replication_recovery_plan_args_doc}
/// Arguments for getReplicationRecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_get_replication_recovery_plan_get_replication_recovery_plan_args_doc}
class GetReplicationRecoveryPlanArgs {
  /// The name of the Replication Plan.
  final pulumi.Input<String> name;

  /// The ID of the vault that should be updated.
  final pulumi.Input<String> recoveryVaultId;

  /// Creates a new [GetReplicationRecoveryPlanArgs].
  /// [name] The name of the Replication Plan.
  /// [recoveryVaultId] The ID of the vault that should be updated.
  GetReplicationRecoveryPlanArgs({
    required this.name,
    required this.recoveryVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'recoveryVaultId': recoveryVaultId};
  }

  factory GetReplicationRecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      recoveryVaultId: pulumi.Input.fromValue(map['recoveryVaultId'] as String),
    );
  }
}
