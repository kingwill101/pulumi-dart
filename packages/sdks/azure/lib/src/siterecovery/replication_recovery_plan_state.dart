// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_azure_to_azure_settings.dart';
import 'replication_recovery_plan_boot_recovery_group.dart';
import 'replication_recovery_plan_failover_recovery_group.dart';
import 'replication_recovery_plan_shutdown_recovery_group.dart';

/// Input properties used for looking up and filtering ReplicationRecoveryPlan resources.
class ReplicationRecoveryPlanState {
  /// An `azure_to_azure_settings` block as defined below.
  final pulumi.Input<ReplicationRecoveryPlanAzureToAzureSettings>? azureToAzureSettings;
  /// One or more `boot_recovery_group` blocks as defined below.
  final pulumi.Input<List<ReplicationRecoveryPlanBootRecoveryGroup>>? bootRecoveryGroups;
  /// One `failover_recovery_group` block as defined below.
  final pulumi.Input<ReplicationRecoveryPlanFailoverRecoveryGroup>? failoverRecoveryGroup;
  /// The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultId;
  /// One `shutdown_recovery_group` block as defined below.
  final pulumi.Input<ReplicationRecoveryPlanShutdownRecoveryGroup>? shutdownRecoveryGroup;
  /// ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created.
  final pulumi.Input<String>? sourceRecoveryFabricId;
  /// ID of target fabric to recover. Changing this forces a new Replication Plan to be created.
  final pulumi.Input<String>? targetRecoveryFabricId;

  /// Creates a new [ReplicationRecoveryPlanState].
  /// [azureToAzureSettings] An `azure_to_azure_settings` block as defined below.
  /// [bootRecoveryGroups] One or more `boot_recovery_group` blocks as defined below.
  /// [failoverRecoveryGroup] One `failover_recovery_group` block as defined below.
  /// [name] The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  /// [recoveryVaultId] The ID of the vault that should be updated. Changing this forces a new resource to be created.
  /// [shutdownRecoveryGroup] One `shutdown_recovery_group` block as defined below.
  /// [sourceRecoveryFabricId] ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created.
  /// [targetRecoveryFabricId] ID of target fabric to recover. Changing this forces a new Replication Plan to be created.
  ReplicationRecoveryPlanState({
    this.azureToAzureSettings,
    this.bootRecoveryGroups,
    this.failoverRecoveryGroup,
    this.name,
    this.recoveryVaultId,
    this.shutdownRecoveryGroup,
    this.sourceRecoveryFabricId,
    this.targetRecoveryFabricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureToAzureSettings': ?pulumi.Input.mapOptionalInputValue<ReplicationRecoveryPlanAzureToAzureSettings, Map<String, dynamic>>(azureToAzureSettings, (value) => value.toMap()),
      'bootRecoveryGroups': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRecoveryPlanBootRecoveryGroup>, List<Map<String, dynamic>>>(bootRecoveryGroups, (value) => pulumi.Input.encodeList<ReplicationRecoveryPlanBootRecoveryGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failoverRecoveryGroup': ?pulumi.Input.mapOptionalInputValue<ReplicationRecoveryPlanFailoverRecoveryGroup, Map<String, dynamic>>(failoverRecoveryGroup, (value) => value.toMap()),
      'name': ?name,
      'recoveryVaultId': ?recoveryVaultId,
      'shutdownRecoveryGroup': ?pulumi.Input.mapOptionalInputValue<ReplicationRecoveryPlanShutdownRecoveryGroup, Map<String, dynamic>>(shutdownRecoveryGroup, (value) => value.toMap()),
      'sourceRecoveryFabricId': ?sourceRecoveryFabricId,
      'targetRecoveryFabricId': ?targetRecoveryFabricId,
    };
  }

  factory ReplicationRecoveryPlanState.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanState(
      azureToAzureSettings: (() { final guardedValue = map['azureToAzureSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationRecoveryPlanAzureToAzureSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootRecoveryGroups: (() { final guardedValue = map['bootRecoveryGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroup>(guardedValue, (value) => ReplicationRecoveryPlanBootRecoveryGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failoverRecoveryGroup: (() { final guardedValue = map['failoverRecoveryGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationRecoveryPlanFailoverRecoveryGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultId: (() { final guardedValue = map['recoveryVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shutdownRecoveryGroup: (() { final guardedValue = map['shutdownRecoveryGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationRecoveryPlanShutdownRecoveryGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceRecoveryFabricId: (() { final guardedValue = map['sourceRecoveryFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRecoveryFabricId: (() { final guardedValue = map['targetRecoveryFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

