// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_advanced_machine_feature.dart';
import 'get_cluster_node_pool_node_config_boot_disk.dart';
import 'get_cluster_node_pool_node_config_confidential_node.dart';
import 'get_cluster_node_pool_node_config_containerd_config.dart';
import 'get_cluster_node_pool_node_config_effective_taint.dart';
import 'get_cluster_node_pool_node_config_ephemeral_storage_config.dart';
import 'get_cluster_node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import 'get_cluster_node_pool_node_config_fast_socket.dart';
import 'get_cluster_node_pool_node_config_gcfs_config.dart';
import 'get_cluster_node_pool_node_config_guest_accelerator.dart';
import 'get_cluster_node_pool_node_config_gvnic.dart';
import 'get_cluster_node_pool_node_config_host_maintenance_policy.dart';
import 'get_cluster_node_pool_node_config_kubelet_config.dart';
import 'get_cluster_node_pool_node_config_linux_node_config.dart';
import 'get_cluster_node_pool_node_config_local_nvme_ssd_block_config.dart';
import 'get_cluster_node_pool_node_config_reservation_affinity.dart';
import 'get_cluster_node_pool_node_config_sandbox_config.dart';
import 'get_cluster_node_pool_node_config_secondary_boot_disk.dart';
import 'get_cluster_node_pool_node_config_shielded_instance_config.dart';
import 'get_cluster_node_pool_node_config_sole_tenant_config.dart';
import 'get_cluster_node_pool_node_config_taint.dart';
import 'get_cluster_node_pool_node_config_windows_node_config.dart';
import 'get_cluster_node_pool_node_config_workload_metadata_config.dart';

class GetClusterNodePoolNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigAdvancedMachineFeature>> advancedMachineFeatures;
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final pulumi.Input<String> bootDiskKmsKey;
  /// Boot disk configuration for node pools nodes.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigBootDisk>> bootDisks;
  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigConfidentialNode>> confidentialNodes;
  /// Parameters for containerd configuration.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfig>> containerdConfigs;
  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final pulumi.Input<int> diskSizeGb;
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final pulumi.Input<String> diskType;
  /// List of kubernetes taints applied to each node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigEffectiveTaint>> effectiveTaints;
  /// If enabled boot disks are configured with confidential mode.
  final pulumi.Input<bool> enableConfidentialStorage;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigEphemeralStorageConfig>> ephemeralStorageConfigs;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>> ephemeralStorageLocalSsdConfigs;
  /// Enable or disable NCCL Fast Socket in the node pool.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigFastSocket>> fastSockets;
  /// Enables Flex Start provisioning model for the node pool
  final pulumi.Input<bool> flexStart;
  /// GCFS configuration for this node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigGcfsConfig>> gcfsConfigs;
  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigGuestAccelerator>> guestAccelerators;
  /// Enable or disable gvnic in the node pool.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigGvnic>> gvnics;
  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigHostMaintenancePolicy>> hostMaintenancePolicies;
  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final pulumi.Input<String> imageType;
  /// Node kubelet configs.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfig>> kubeletConfigs;
  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final pulumi.Input<Map<String, String>> labels;
  /// Parameters that can be configured on Linux nodes.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfig>> linuxNodeConfigs;
  /// Parameters for raw-block local NVMe SSDs.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>> localNvmeSsdBlockConfigs;
  /// The number of local SSD disks to be attached to the node.
  final pulumi.Input<int> localSsdCount;
  /// LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  final pulumi.Input<String> localSsdEncryptionMode;
  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final pulumi.Input<String> loggingVariant;
  /// The name of a Google Compute Engine machine type.
  final pulumi.Input<String> machineType;
  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final pulumi.Input<String> maxRunDuration;
  /// The metadata key/value pairs assigned to instances in the cluster.
  final pulumi.Input<Map<String, String>> metadata;
  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  final pulumi.Input<String> minCpuPlatform;
  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  final pulumi.Input<String> nodeGroup;
  /// The set of Google API scopes to be made available on all of the node VMs.
  final pulumi.Input<List<String>> oauthScopes;
  /// Whether the nodes are created as preemptible VM instances.
  final pulumi.Input<bool> preemptible;
  /// The reservation affinity configuration for the node pool.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigReservationAffinity>> reservationAffinities;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final pulumi.Input<Map<String, String>> resourceLabels;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;
  /// Sandbox configuration for this node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigSandboxConfig>> sandboxConfigs;
  /// Secondary boot disks for preloading data or container images.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigSecondaryBootDisk>> secondaryBootDisks;
  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final pulumi.Input<String> serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigShieldedInstanceConfig>> shieldedInstanceConfigs;
  /// Node affinity options for sole tenant node pools.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigSoleTenantConfig>> soleTenantConfigs;
  /// Whether the nodes are created as spot VM instances.
  final pulumi.Input<bool> spot;
  /// The list of Storage Pools where boot disks are provisioned.
  final pulumi.Input<List<String>> storagePools;
  /// The list of instance tags applied to all nodes.
  final pulumi.Input<List<String>> tags;
  /// List of Kubernetes taints to be applied to each node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigTaint>> taints;
  /// Parameters that can be configured on Windows nodes.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigWindowsNodeConfig>> windowsNodeConfigs;
  /// The workload metadata configuration for this node.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigWorkloadMetadataConfig>> workloadMetadataConfigs;

  /// Creates a new [GetClusterNodePoolNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling advanced machine features.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  /// [bootDisks] Boot disk configuration for node pools nodes.
  /// [confidentialNodes] Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  /// [containerdConfigs] Parameters for containerd configuration.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] If enabled boot disks are configured with confidential mode.
  /// [ephemeralStorageConfigs] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [ephemeralStorageLocalSsdConfigs] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [fastSockets] Enable or disable NCCL Fast Socket in the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool
  /// [gcfsConfigs] GCFS configuration for this node.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnics] Enable or disable gvnic in the node pool.
  /// [hostMaintenancePolicies] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  /// [kubeletConfigs] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  /// [linuxNodeConfigs] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfigs] Parameters for raw-block local NVMe SSDs.
  /// [localSsdCount] The number of local SSD disks to be attached to the node.
  /// [localSsdEncryptionMode] LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  /// [loggingVariant] Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  /// [machineType] The name of a Google Compute Engine machine type.
  /// [maxRunDuration] The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  /// [metadata] The metadata key/value pairs assigned to instances in the cluster.
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs.
  /// [preemptible] Whether the nodes are created as preemptible VM instances.
  /// [reservationAffinities] The reservation affinity configuration for the node pool.
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [sandboxConfigs] Sandbox configuration for this node.
  /// [secondaryBootDisks] Secondary boot disks for preloading data or container images.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfigs] Shielded Instance options.
  /// [soleTenantConfigs] Node affinity options for sole tenant node pools.
  /// [spot] Whether the nodes are created as spot VM instances.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes.
  /// [taints] List of Kubernetes taints to be applied to each node.
  /// [windowsNodeConfigs] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfigs] The workload metadata configuration for this node.
  GetClusterNodePoolNodeConfig({
    required this.advancedMachineFeatures,
    required this.bootDiskKmsKey,
    required this.bootDisks,
    required this.confidentialNodes,
    required this.containerdConfigs,
    required this.diskSizeGb,
    required this.diskType,
    required this.effectiveTaints,
    required this.enableConfidentialStorage,
    required this.ephemeralStorageConfigs,
    required this.ephemeralStorageLocalSsdConfigs,
    required this.fastSockets,
    required this.flexStart,
    required this.gcfsConfigs,
    required this.guestAccelerators,
    required this.gvnics,
    required this.hostMaintenancePolicies,
    required this.imageType,
    required this.kubeletConfigs,
    required this.labels,
    required this.linuxNodeConfigs,
    required this.localNvmeSsdBlockConfigs,
    required this.localSsdCount,
    required this.localSsdEncryptionMode,
    required this.loggingVariant,
    required this.machineType,
    required this.maxRunDuration,
    required this.metadata,
    required this.minCpuPlatform,
    required this.nodeGroup,
    required this.oauthScopes,
    required this.preemptible,
    required this.reservationAffinities,
    required this.resourceLabels,
    required this.resourceManagerTags,
    required this.sandboxConfigs,
    required this.secondaryBootDisks,
    required this.serviceAccount,
    required this.shieldedInstanceConfigs,
    required this.soleTenantConfigs,
    required this.spot,
    required this.storagePools,
    required this.tags,
    required this.taints,
    required this.windowsNodeConfigs,
    required this.workloadMetadataConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigAdvancedMachineFeature>, List<Map<String, dynamic>>>(advancedMachineFeatures, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigAdvancedMachineFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskKmsKey': bootDiskKmsKey,
      'bootDisks': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigBootDisk>, List<Map<String, dynamic>>>(bootDisks, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'confidentialNodes': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigConfidentialNode>, List<Map<String, dynamic>>>(confidentialNodes, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigConfidentialNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerdConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfig>, List<Map<String, dynamic>>>(containerdConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'effectiveTaints': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigEffectiveTaint>, List<Map<String, dynamic>>>(effectiveTaints, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigEffectiveTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableConfidentialStorage': enableConfidentialStorage,
      'ephemeralStorageConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigEphemeralStorageConfig>, List<Map<String, dynamic>>>(ephemeralStorageConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigEphemeralStorageConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorageLocalSsdConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>, List<Map<String, dynamic>>>(ephemeralStorageLocalSsdConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fastSockets': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigFastSocket>, List<Map<String, dynamic>>>(fastSockets, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigFastSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flexStart': flexStart,
      'gcfsConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigGcfsConfig>, List<Map<String, dynamic>>>(gcfsConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigGcfsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestAccelerators': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gvnics': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigGvnic>, List<Map<String, dynamic>>>(gvnics, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigGvnic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostMaintenancePolicies': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigHostMaintenancePolicy>, List<Map<String, dynamic>>>(hostMaintenancePolicies, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigHostMaintenancePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageType': imageType,
      'kubeletConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfig>, List<Map<String, dynamic>>>(kubeletConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': labels,
      'linuxNodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfig>, List<Map<String, dynamic>>>(linuxNodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localNvmeSsdBlockConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>, List<Map<String, dynamic>>>(localNvmeSsdBlockConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsdCount': localSsdCount,
      'localSsdEncryptionMode': localSsdEncryptionMode,
      'loggingVariant': loggingVariant,
      'machineType': machineType,
      'maxRunDuration': maxRunDuration,
      'metadata': metadata,
      'minCpuPlatform': minCpuPlatform,
      'nodeGroup': nodeGroup,
      'oauthScopes': oauthScopes,
      'preemptible': preemptible,
      'reservationAffinities': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigReservationAffinity>, List<Map<String, dynamic>>>(reservationAffinities, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigReservationAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceLabels': resourceLabels,
      'resourceManagerTags': resourceManagerTags,
      'sandboxConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigSandboxConfig>, List<Map<String, dynamic>>>(sandboxConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigSandboxConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryBootDisks': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigSecondaryBootDisk>, List<Map<String, dynamic>>>(secondaryBootDisks, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigSecondaryBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': serviceAccount,
      'shieldedInstanceConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigShieldedInstanceConfig>, List<Map<String, dynamic>>>(shieldedInstanceConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigShieldedInstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'soleTenantConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigSoleTenantConfig>, List<Map<String, dynamic>>>(soleTenantConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigSoleTenantConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spot': spot,
      'storagePools': storagePools,
      'tags': tags,
      'taints': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigWindowsNodeConfig>, List<Map<String, dynamic>>>(windowsNodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigWindowsNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadMetadataConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigWorkloadMetadataConfig>, List<Map<String, dynamic>>>(workloadMetadataConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfig(
      advancedMachineFeatures: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigAdvancedMachineFeature>(map['advancedMachineFeatures']!, (value) => GetClusterNodePoolNodeConfigAdvancedMachineFeature.fromMap((value as Map).cast<String, dynamic>()))),
      bootDiskKmsKey: pulumi.Input.fromValue(map['bootDiskKmsKey'] as String),
      bootDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigBootDisk>(map['bootDisks']!, (value) => GetClusterNodePoolNodeConfigBootDisk.fromMap((value as Map).cast<String, dynamic>()))),
      confidentialNodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigConfidentialNode>(map['confidentialNodes']!, (value) => GetClusterNodePoolNodeConfigConfidentialNode.fromMap((value as Map).cast<String, dynamic>()))),
      containerdConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfig>(map['containerdConfigs']!, (value) => GetClusterNodePoolNodeConfigContainerdConfig.fromMap((value as Map).cast<String, dynamic>()))),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      effectiveTaints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigEffectiveTaint>(map['effectiveTaints']!, (value) => GetClusterNodePoolNodeConfigEffectiveTaint.fromMap((value as Map).cast<String, dynamic>()))),
      enableConfidentialStorage: pulumi.Input.fromValue(map['enableConfidentialStorage'] as bool),
      ephemeralStorageConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigEphemeralStorageConfig>(map['ephemeralStorageConfigs']!, (value) => GetClusterNodePoolNodeConfigEphemeralStorageConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ephemeralStorageLocalSsdConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>(map['ephemeralStorageLocalSsdConfigs']!, (value) => GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap((value as Map).cast<String, dynamic>()))),
      fastSockets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigFastSocket>(map['fastSockets']!, (value) => GetClusterNodePoolNodeConfigFastSocket.fromMap((value as Map).cast<String, dynamic>()))),
      flexStart: pulumi.Input.fromValue(map['flexStart'] as bool),
      gcfsConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGcfsConfig>(map['gcfsConfigs']!, (value) => GetClusterNodePoolNodeConfigGcfsConfig.fromMap((value as Map).cast<String, dynamic>()))),
      guestAccelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGuestAccelerator>(map['guestAccelerators']!, (value) => GetClusterNodePoolNodeConfigGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      gvnics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGvnic>(map['gvnics']!, (value) => GetClusterNodePoolNodeConfigGvnic.fromMap((value as Map).cast<String, dynamic>()))),
      hostMaintenancePolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigHostMaintenancePolicy>(map['hostMaintenancePolicies']!, (value) => GetClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>()))),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      kubeletConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfig>(map['kubeletConfigs']!, (value) => GetClusterNodePoolNodeConfigKubeletConfig.fromMap((value as Map).cast<String, dynamic>()))),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      linuxNodeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfig>(map['linuxNodeConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      localNvmeSsdBlockConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>(map['localNvmeSsdBlockConfigs']!, (value) => GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap((value as Map).cast<String, dynamic>()))),
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
      localSsdEncryptionMode: pulumi.Input.fromValue(map['localSsdEncryptionMode'] as String),
      loggingVariant: pulumi.Input.fromValue(map['loggingVariant'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxRunDuration: pulumi.Input.fromValue(map['maxRunDuration'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      nodeGroup: pulumi.Input.fromValue(map['nodeGroup'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
      preemptible: pulumi.Input.fromValue(map['preemptible'] as bool),
      reservationAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigReservationAffinity>(map['reservationAffinities']!, (value) => GetClusterNodePoolNodeConfigReservationAffinity.fromMap((value as Map).cast<String, dynamic>()))),
      resourceLabels: pulumi.Input.fromValue((map['resourceLabels'] as Map).cast<String, String>()),
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
      sandboxConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigSandboxConfig>(map['sandboxConfigs']!, (value) => GetClusterNodePoolNodeConfigSandboxConfig.fromMap((value as Map).cast<String, dynamic>()))),
      secondaryBootDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigSecondaryBootDisk>(map['secondaryBootDisks']!, (value) => GetClusterNodePoolNodeConfigSecondaryBootDisk.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      shieldedInstanceConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigShieldedInstanceConfig>(map['shieldedInstanceConfigs']!, (value) => GetClusterNodePoolNodeConfigShieldedInstanceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      soleTenantConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigSoleTenantConfig>(map['soleTenantConfigs']!, (value) => GetClusterNodePoolNodeConfigSoleTenantConfig.fromMap((value as Map).cast<String, dynamic>()))),
      spot: pulumi.Input.fromValue(map['spot'] as bool),
      storagePools: pulumi.Input.fromValue((map['storagePools'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      taints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigTaint>(map['taints']!, (value) => GetClusterNodePoolNodeConfigTaint.fromMap((value as Map).cast<String, dynamic>()))),
      windowsNodeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigWindowsNodeConfig>(map['windowsNodeConfigs']!, (value) => GetClusterNodePoolNodeConfigWindowsNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      workloadMetadataConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigWorkloadMetadataConfig>(map['workloadMetadataConfigs']!, (value) => GetClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

