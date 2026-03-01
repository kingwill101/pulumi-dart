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
    pulumi.Output<ReplicationRecoveryPlanAzureToAzureSettings>? azureToAzureSettings,
    pulumi.Output<List<ReplicationRecoveryPlanBootRecoveryGroup>>? bootRecoveryGroups,
    pulumi.Output<ReplicationRecoveryPlanFailoverRecoveryGroup>? failoverRecoveryGroup,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryVaultId,
    pulumi.Output<ReplicationRecoveryPlanShutdownRecoveryGroup>? shutdownRecoveryGroup,
    pulumi.Output<String>? sourceRecoveryFabricId,
    pulumi.Output<String>? targetRecoveryFabricId,
  }) :
      azureToAzureSettings = pulumi.Input.asOptionalInput<ReplicationRecoveryPlanAzureToAzureSettings>(azureToAzureSettings),
      bootRecoveryGroups = pulumi.Input.asOptionalInput<List<ReplicationRecoveryPlanBootRecoveryGroup>>(bootRecoveryGroups),
      failoverRecoveryGroup = pulumi.Input.asOptionalInput<ReplicationRecoveryPlanFailoverRecoveryGroup>(failoverRecoveryGroup),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultId = pulumi.Input.asOptionalInput<String>(recoveryVaultId),
      shutdownRecoveryGroup = pulumi.Input.asOptionalInput<ReplicationRecoveryPlanShutdownRecoveryGroup>(shutdownRecoveryGroup),
      sourceRecoveryFabricId = pulumi.Input.asOptionalInput<String>(sourceRecoveryFabricId),
      targetRecoveryFabricId = pulumi.Input.asOptionalInput<String>(targetRecoveryFabricId);

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
      azureToAzureSettings: map['azureToAzureSettings'] == null ? null : pulumi.Output.create<ReplicationRecoveryPlanAzureToAzureSettings>(ReplicationRecoveryPlanAzureToAzureSettings.fromMap((map['azureToAzureSettings'] as Map).cast<String, dynamic>())),
      bootRecoveryGroups: map['bootRecoveryGroups'] == null ? null : pulumi.Output.create<List<ReplicationRecoveryPlanBootRecoveryGroup>>(pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroup>(map['bootRecoveryGroups'], (value) => ReplicationRecoveryPlanBootRecoveryGroup.fromMap((value as Map).cast<String, dynamic>()))),
      failoverRecoveryGroup: map['failoverRecoveryGroup'] == null ? null : pulumi.Output.create<ReplicationRecoveryPlanFailoverRecoveryGroup>(ReplicationRecoveryPlanFailoverRecoveryGroup.fromMap((map['failoverRecoveryGroup'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultId'] as String),
      shutdownRecoveryGroup: map['shutdownRecoveryGroup'] == null ? null : pulumi.Output.create<ReplicationRecoveryPlanShutdownRecoveryGroup>(ReplicationRecoveryPlanShutdownRecoveryGroup.fromMap((map['shutdownRecoveryGroup'] as Map).cast<String, dynamic>())),
      sourceRecoveryFabricId: map['sourceRecoveryFabricId'] == null ? null : pulumi.Output.create<String>(map['sourceRecoveryFabricId'] as String),
      targetRecoveryFabricId: map['targetRecoveryFabricId'] == null ? null : pulumi.Output.create<String>(map['targetRecoveryFabricId'] as String),
    );
  }
}

