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
      azureToAzureSettings: map['azureToAzureSettings'] == null ? null : (ReplicationRecoveryPlanAzureToAzureSettings.fromMap((map['azureToAzureSettings']! as Map).cast<String, dynamic>())).input(),
      bootRecoveryGroups: map['bootRecoveryGroups'] == null ? null : (pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroup>(map['bootRecoveryGroups']!, (value) => ReplicationRecoveryPlanBootRecoveryGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failoverRecoveryGroup: map['failoverRecoveryGroup'] == null ? null : (ReplicationRecoveryPlanFailoverRecoveryGroup.fromMap((map['failoverRecoveryGroup']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : (map['recoveryVaultId']! as String).input(),
      shutdownRecoveryGroup: map['shutdownRecoveryGroup'] == null ? null : (ReplicationRecoveryPlanShutdownRecoveryGroup.fromMap((map['shutdownRecoveryGroup']! as Map).cast<String, dynamic>())).input(),
      sourceRecoveryFabricId: map['sourceRecoveryFabricId'] == null ? null : (map['sourceRecoveryFabricId']! as String).input(),
      targetRecoveryFabricId: map['targetRecoveryFabricId'] == null ? null : (map['targetRecoveryFabricId']! as String).input(),
    );
  }
}

