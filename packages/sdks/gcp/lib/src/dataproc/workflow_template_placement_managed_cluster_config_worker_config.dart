// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_worker_config_accelerator.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config_disk_config.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config_instance_flexibility_policy.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config_managed_group_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfig {
  /// The Compute Engine accelerator configuration for these instances. Structure is documented below.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerator>?>? accelerators;
  /// Disk option config settings. Structure is documented below.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig?>? diskConfig;
  /// The Compute Engine image resource used for cluster instances.
  final pulumi.Input<String?>? image;
  /// Instance flexibility Policy allowing a mixture of VM shapes. Structure is documented below.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy?>? instanceFlexibilityPolicy;
  /// Output only. The list of instance names.
  final pulumi.Input<List<String>?>? instanceNames;
  /// Output only. Specifies that this instance group contains preemptible instances.
  final pulumi.Input<bool?>? isPreemptible;
  /// The Compute Engine machine type used for cluster instances.
  final pulumi.Input<String?>? machineType;
  /// Output only. The config for Compute Engine Instance Group Manager that manages this group.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig>?>? managedGroupConfigs;
  /// The minimum CPU platform and architecture for the cluster.
  final pulumi.Input<String?>? minCpuPlatform;
  /// The number of worker instances in the cluster.
  final pulumi.Input<int?>? numInstances;
  /// Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  final pulumi.Input<String?>? preemptibility;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfig].
  /// [accelerators] The Compute Engine accelerator configuration for these instances. Structure is documented below.
  /// [diskConfig] Disk option config settings. Structure is documented below.
  /// [image] The Compute Engine image resource used for cluster instances.
  /// [instanceFlexibilityPolicy] Instance flexibility Policy allowing a mixture of VM shapes. Structure is documented below.
  /// [instanceNames] Output only. The list of instance names.
  /// [isPreemptible] Output only. Specifies that this instance group contains preemptible instances.
  /// [machineType] The Compute Engine machine type used for cluster instances.
  /// [managedGroupConfigs] Output only. The config for Compute Engine Instance Group Manager that manages this group.
  /// [minCpuPlatform] The minimum CPU platform and architecture for the cluster.
  /// [numInstances] The number of worker instances in the cluster.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  const WorkflowTemplatePlacementManagedClusterConfigWorkerConfig({
    this.accelerators,
    this.diskConfig,
    this.image,
    this.instanceFlexibilityPolicy,
    this.instanceNames,
    this.isPreemptible,
    this.machineType,
    this.managedGroupConfigs,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'image': ?image,
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceNames': ?instanceNames,
      'isPreemptible': ?isPreemptible,
      'machineType': ?machineType,
      'managedGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig>, List<Map<String, dynamic>>>(managedGroupConfigs, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
      'preemptibility': ?preemptibility,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfig(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerator>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigWorkerConfigAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceNames: (() { final guardedValue = map['instanceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isPreemptible: (() { final guardedValue = map['isPreemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedGroupConfigs: (() { final guardedValue = map['managedGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numInstances: (() { final guardedValue = map['numInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      preemptibility: (() { final guardedValue = map['preemptibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
