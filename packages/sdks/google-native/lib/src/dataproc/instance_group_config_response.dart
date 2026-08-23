// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'disk_config_response.dart';
import 'instance_flexibility_policy_response.dart';
import 'instance_reference_response.dart';
import 'managed_group_config_response.dart';
import 'startup_config_response.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfigResponse {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<List<AcceleratorConfigResponse>> accelerators;
  /// Optional. Disk option config settings.
  final pulumi.Input<DiskConfigResponse> diskConfig;
  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final pulumi.Input<String> imageUri;
  /// Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  final pulumi.Input<InstanceFlexibilityPolicyResponse> instanceFlexibilityPolicy;
  /// The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  final pulumi.Input<List<String>> instanceNames;
  /// List of references to Compute Engine instances.
  final pulumi.Input<List<InstanceReferenceResponse>> instanceReferences;
  /// Specifies that this instance group contains preemptible instances.
  final pulumi.Input<bool> isPreemptible;
  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final pulumi.Input<String> machineTypeUri;
  /// The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final pulumi.Input<ManagedGroupConfigResponse> managedGroupConfig;
  /// Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -&gt; Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String> minCpuPlatform;
  /// Optional. The minimum number of primary worker instances to create. If min_num_instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min_num_instances number.Example: Cluster creation request with num_instances = 5 and min_num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
  final pulumi.Input<int> minNumInstances;
  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final pulumi.Input<int> numInstances;
  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final pulumi.Input<String> preemptibility;
  /// Optional. Configuration to handle the startup of instances during cluster create and update process.
  final pulumi.Input<StartupConfigResponse> startupConfig;

  /// Creates a new [InstanceGroupConfigResponse].
  /// [accelerators] Optional. The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Optional. Disk option config settings.
  /// [imageUri] Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  /// [instanceFlexibilityPolicy] Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  /// [instanceNames] The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  /// [instanceReferences] List of references to Compute Engine instances.
  /// [isPreemptible] Specifies that this instance group contains preemptible instances.
  /// [machineTypeUri] Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  /// [managedGroupConfig] The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  /// [minCpuPlatform] Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -&gt; Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [minNumInstances] Optional. The minimum number of primary worker instances to create. If min_num_instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min_num_instances number.Example: Cluster creation request with num_instances = 5 and min_num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
  /// [numInstances] Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  /// [startupConfig] Optional. Configuration to handle the startup of instances during cluster create and update process.
  const InstanceGroupConfigResponse({
    required this.accelerators,
    required this.diskConfig,
    required this.imageUri,
    required this.instanceFlexibilityPolicy,
    required this.instanceNames,
    required this.instanceReferences,
    required this.isPreemptible,
    required this.machineTypeUri,
    required this.managedGroupConfig,
    required this.minCpuPlatform,
    required this.minNumInstances,
    required this.numInstances,
    required this.preemptibility,
    required this.startupConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponse>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': pulumi.Input.mapInputValue<DiskConfigResponse, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'imageUri': imageUri,
      'instanceFlexibilityPolicy': pulumi.Input.mapInputValue<InstanceFlexibilityPolicyResponse, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceNames': instanceNames,
      'instanceReferences': pulumi.Input.mapInputValue<List<InstanceReferenceResponse>, List<Map<String, dynamic>>>(instanceReferences, (value) => pulumi.Input.encodeList<InstanceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isPreemptible': isPreemptible,
      'machineTypeUri': machineTypeUri,
      'managedGroupConfig': pulumi.Input.mapInputValue<ManagedGroupConfigResponse, Map<String, dynamic>>(managedGroupConfig, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'minNumInstances': minNumInstances,
      'numInstances': numInstances,
      'preemptibility': preemptibility,
      'startupConfig': pulumi.Input.mapInputValue<StartupConfigResponse, Map<String, dynamic>>(startupConfig, (value) => value.toMap()),
    };
  }

  factory InstanceGroupConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfigResponse(
      accelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigResponse>(map['accelerators']!, (value) => AcceleratorConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      diskConfig: pulumi.Input.fromValue(DiskConfigResponse.fromMap((map['diskConfig']! as Map).cast<String, dynamic>())),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      instanceFlexibilityPolicy: pulumi.Input.fromValue(InstanceFlexibilityPolicyResponse.fromMap((map['instanceFlexibilityPolicy']! as Map).cast<String, dynamic>())),
      instanceNames: pulumi.Input.fromValue((map['instanceNames'] as List).cast<String>()),
      instanceReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceReferenceResponse>(map['instanceReferences']!, (value) => InstanceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      isPreemptible: pulumi.Input.fromValue(map['isPreemptible'] as bool),
      machineTypeUri: pulumi.Input.fromValue(map['machineTypeUri'] as String),
      managedGroupConfig: pulumi.Input.fromValue(ManagedGroupConfigResponse.fromMap((map['managedGroupConfig']! as Map).cast<String, dynamic>())),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      minNumInstances: pulumi.Input.fromValue(map['minNumInstances'] as int),
      numInstances: pulumi.Input.fromValue(map['numInstances'] as int),
      preemptibility: pulumi.Input.fromValue(map['preemptibility'] as String),
      startupConfig: pulumi.Input.fromValue(StartupConfigResponse.fromMap((map['startupConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
