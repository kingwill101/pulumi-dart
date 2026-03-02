// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'disk_config.dart';
import 'instance_flexibility_policy.dart';
import 'instance_group_config_preemptibility.dart';
import 'startup_config.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfig {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<List<AcceleratorConfig>>? accelerators;
  /// Optional. Disk option config settings.
  final pulumi.Input<DiskConfig>? diskConfig;
  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final pulumi.Input<String>? imageUri;
  /// Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  final pulumi.Input<InstanceFlexibilityPolicy>? instanceFlexibilityPolicy;
  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final pulumi.Input<String>? machineTypeUri;
  /// Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String>? minCpuPlatform;
  /// Optional. The minimum number of primary worker instances to create. If min_num_instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min_num_instances number.Example: Cluster creation request with num_instances = 5 and min_num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
  final pulumi.Input<int>? minNumInstances;
  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final pulumi.Input<int>? numInstances;
  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final pulumi.Input<InstanceGroupConfigPreemptibility>? preemptibility;
  /// Optional. Configuration to handle the startup of instances during cluster create and update process.
  final pulumi.Input<StartupConfig>? startupConfig;

  /// Creates a new [InstanceGroupConfig].
  /// [accelerators] Optional. The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Optional. Disk option config settings.
  /// [imageUri] Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  /// [instanceFlexibilityPolicy] Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  /// [machineTypeUri] Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  /// [minCpuPlatform] Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [minNumInstances] Optional. The minimum number of primary worker instances to create. If min_num_instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min_num_instances number.Example: Cluster creation request with num_instances = 5 and min_num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
  /// [numInstances] Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  /// [startupConfig] Optional. Configuration to handle the startup of instances during cluster create and update process.
  InstanceGroupConfig({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.instanceFlexibilityPolicy,
    this.machineTypeUri,
    this.minCpuPlatform,
    this.minNumInstances,
    this.numInstances,
    this.preemptibility,
    this.startupConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfig>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<DiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceFlexibilityPolicy, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'machineTypeUri': ?machineTypeUri,
      'minCpuPlatform': ?minCpuPlatform,
      'minNumInstances': ?minNumInstances,
      'numInstances': ?numInstances,
      'preemptibility': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfigPreemptibility, String>(preemptibility, (value) => value.value),
      'startupConfig': ?pulumi.Input.mapOptionalInputValue<StartupConfig, Map<String, dynamic>>(startupConfig, (value) => value.toMap()),
    };
  }

  factory InstanceGroupConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfig(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfig>(map['accelerators']!, (value) => AcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskConfig: map['diskConfig'] == null ? null : (DiskConfig.fromMap((map['diskConfig']! as Map).cast<String, dynamic>())).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri']! as String).input(),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null ? null : (InstanceFlexibilityPolicy.fromMap((map['instanceFlexibilityPolicy']! as Map).cast<String, dynamic>())).input(),
      machineTypeUri: map['machineTypeUri'] == null ? null : (map['machineTypeUri']! as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform']! as String).input(),
      minNumInstances: map['minNumInstances'] == null ? null : (map['minNumInstances']! as int).input(),
      numInstances: map['numInstances'] == null ? null : (map['numInstances']! as int).input(),
      preemptibility: map['preemptibility'] == null ? null : (InstanceGroupConfigPreemptibility.fromValue(map['preemptibility']! as String)).input(),
      startupConfig: map['startupConfig'] == null ? null : (StartupConfig.fromMap((map['startupConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

