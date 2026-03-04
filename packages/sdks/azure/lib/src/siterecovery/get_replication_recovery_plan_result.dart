// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_recovery_plan_azure_to_azure_setting.dart';
import 'get_replication_recovery_plan_recovery_group.dart';

/// Result data returned by getReplicationRecoveryPlan.
class GetReplicationRecoveryPlanResult {
  final List<GetReplicationRecoveryPlanAzureToAzureSetting>
  azureToAzureSettings;
  final String failoverDeploymentModel;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the Action.
  final String name;

  /// `recovery_group` block defined as below.
  final List<GetReplicationRecoveryPlanRecoveryGroup> recoveryGroups;
  final String recoveryVaultId;

  /// The ID of source fabric to be recovered from.
  final String sourceRecoveryFabricId;

  /// The ID of target fabric to recover.
  final String targetRecoveryFabricId;

  /// Creates a new [GetReplicationRecoveryPlanResult].
  /// [azureToAzureSettings] Required.
  /// [failoverDeploymentModel] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the Action.
  /// [recoveryGroups] `recovery_group` block defined as below.
  /// [recoveryVaultId] Required.
  /// [sourceRecoveryFabricId] The ID of source fabric to be recovered from.
  /// [targetRecoveryFabricId] The ID of target fabric to recover.
  GetReplicationRecoveryPlanResult({
    required this.azureToAzureSettings,
    required this.failoverDeploymentModel,
    required this.id,
    required this.name,
    required this.recoveryGroups,
    required this.recoveryVaultId,
    required this.sourceRecoveryFabricId,
    required this.targetRecoveryFabricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureToAzureSettings':
          pulumi.Input.encodeList<
            GetReplicationRecoveryPlanAzureToAzureSetting,
            Map<String, dynamic>
          >(azureToAzureSettings, (value) => value.toMap()),
      'failoverDeploymentModel': failoverDeploymentModel,
      'id': id,
      'name': name,
      'recoveryGroups':
          pulumi.Input.encodeList<
            GetReplicationRecoveryPlanRecoveryGroup,
            Map<String, dynamic>
          >(recoveryGroups, (value) => value.toMap()),
      'recoveryVaultId': recoveryVaultId,
      'sourceRecoveryFabricId': sourceRecoveryFabricId,
      'targetRecoveryFabricId': targetRecoveryFabricId,
    };
  }

  factory GetReplicationRecoveryPlanResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanResult(
      azureToAzureSettings:
          pulumi
              .Input.decodeList<GetReplicationRecoveryPlanAzureToAzureSetting>(
            map['azureToAzureSettings']!,
            (value) => GetReplicationRecoveryPlanAzureToAzureSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      failoverDeploymentModel: map['failoverDeploymentModel'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      recoveryGroups:
          pulumi.Input.decodeList<GetReplicationRecoveryPlanRecoveryGroup>(
            map['recoveryGroups']!,
            (value) => GetReplicationRecoveryPlanRecoveryGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      recoveryVaultId: map['recoveryVaultId'] as String,
      sourceRecoveryFabricId: map['sourceRecoveryFabricId'] as String,
      targetRecoveryFabricId: map['targetRecoveryFabricId'] as String,
    );
  }
}
