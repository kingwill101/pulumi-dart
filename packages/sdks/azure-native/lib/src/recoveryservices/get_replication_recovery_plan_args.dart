// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_recovery_plan_args_doc}
/// Arguments for getReplicationRecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_recovery_plan_args_doc}
class GetReplicationRecoveryPlanArgs {
  /// Name of the recovery plan.
  final pulumi.Input<String> recoveryPlanName;

  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationRecoveryPlanArgs].
  /// [recoveryPlanName] Name of the recovery plan.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationRecoveryPlanArgs({
    required this.recoveryPlanName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryPlanName': recoveryPlanName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationRecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanArgs(
      recoveryPlanName: pulumi.Input.fromValue(
        map['recoveryPlanName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
