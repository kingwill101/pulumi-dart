// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_dataproc_v1beta2.dart';
import 'disk_config_dataproc_v1beta2.dart';
import 'instance_group_config_preemptibility_dataproc_v1beta2.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfigDataprocV1beta2 {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<List<AcceleratorConfigDataprocV1beta2>>? accelerators;
  /// Optional. Disk option config settings.
  final pulumi.Input<DiskConfigDataprocV1beta2>? diskConfig;
  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final pulumi.Input<String>? imageUri;
  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final pulumi.Input<String>? machineTypeUri;
  /// Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String>? minCpuPlatform;
  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final pulumi.Input<int>? numInstances;
  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final pulumi.Input<InstanceGroupConfigPreemptibilityDataprocV1beta2>? preemptibility;

  /// Creates a new [InstanceGroupConfigDataprocV1beta2].
  /// [accelerators] Optional. The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Optional. Disk option config settings.
  /// [imageUri] Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  /// [machineTypeUri] Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  /// [minCpuPlatform] Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [numInstances] Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  InstanceGroupConfigDataprocV1beta2({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.machineTypeUri,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigDataprocV1beta2>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigDataprocV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<DiskConfigDataprocV1beta2, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'machineTypeUri': ?machineTypeUri,
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
      'preemptibility': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfigPreemptibilityDataprocV1beta2, String>(preemptibility, (value) => value.value),
    };
  }

  factory InstanceGroupConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfigDataprocV1beta2(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfigDataprocV1beta2>(map['accelerators'], (value) => AcceleratorConfigDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskConfig: map['diskConfig'] == null ? null : (DiskConfigDataprocV1beta2.fromMap((map['diskConfig'] as Map).cast<String, dynamic>())).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
      machineTypeUri: map['machineTypeUri'] == null ? null : (map['machineTypeUri'] as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      numInstances: map['numInstances'] == null ? null : (map['numInstances'] as int).input(),
      preemptibility: map['preemptibility'] == null ? null : (InstanceGroupConfigPreemptibilityDataprocV1beta2.fromValue(map['preemptibility'] as String)).input(),
    );
  }
}

