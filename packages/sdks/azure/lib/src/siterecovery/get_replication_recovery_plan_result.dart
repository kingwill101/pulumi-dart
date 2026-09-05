// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_recovery_plan_azure_to_azure_setting.dart';
import 'get_replication_recovery_plan_recovery_group.dart';

/// Result data returned by getReplicationRecoveryPlan.
class GetReplicationRecoveryPlanResult {
  final List<GetReplicationRecoveryPlanAzureToAzureSetting>? azureToAzureSettings;
  final String? failoverDeploymentModel;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the Action.
  final String? name;
  /// `recoveryGroup` block defined as below.
  final List<GetReplicationRecoveryPlanRecoveryGroup>? recoveryGroups;
  final String? recoveryVaultId;
  /// The ID of source fabric to be recovered from.
  final String? sourceRecoveryFabricId;
  /// The ID of target fabric to recover.
  final String? targetRecoveryFabricId;

  /// Creates a new [GetReplicationRecoveryPlanResult].
  /// [azureToAzureSettings] Optional.
  /// [failoverDeploymentModel] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the Action.
  /// [recoveryGroups] `recoveryGroup` block defined as below.
  /// [recoveryVaultId] Optional.
  /// [sourceRecoveryFabricId] The ID of source fabric to be recovered from.
  /// [targetRecoveryFabricId] The ID of target fabric to recover.
  const GetReplicationRecoveryPlanResult({
    this.azureToAzureSettings,
    this.failoverDeploymentModel,
    this.id,
    this.name,
    this.recoveryGroups,
    this.recoveryVaultId,
    this.sourceRecoveryFabricId,
    this.targetRecoveryFabricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureToAzureSettings': ?(() { final guardedValue = azureToAzureSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationRecoveryPlanAzureToAzureSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'failoverDeploymentModel': ?failoverDeploymentModel,
      'id': ?id,
      'name': ?name,
      'recoveryGroups': ?(() { final guardedValue = recoveryGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationRecoveryPlanRecoveryGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'recoveryVaultId': ?recoveryVaultId,
      'sourceRecoveryFabricId': ?sourceRecoveryFabricId,
      'targetRecoveryFabricId': ?targetRecoveryFabricId,
    };
  }

  factory GetReplicationRecoveryPlanResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanResult(
      azureToAzureSettings: (() { final guardedValue = map['azureToAzureSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationRecoveryPlanAzureToAzureSetting>(guardedValue, (value) => GetReplicationRecoveryPlanAzureToAzureSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      failoverDeploymentModel: (() { final guardedValue = map['failoverDeploymentModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryGroups: (() { final guardedValue = map['recoveryGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationRecoveryPlanRecoveryGroup>(guardedValue, (value) => GetReplicationRecoveryPlanRecoveryGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      recoveryVaultId: (() { final guardedValue = map['recoveryVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRecoveryFabricId: (() { final guardedValue = map['sourceRecoveryFabricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetRecoveryFabricId: (() { final guardedValue = map['targetRecoveryFabricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
