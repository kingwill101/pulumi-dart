// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_advanced_machine_feature.dart';
import 'get_cluster_node_config_boot_disk.dart';
import 'get_cluster_node_config_confidential_node.dart';
import 'get_cluster_node_config_containerd_config.dart';
import 'get_cluster_node_config_effective_taint.dart';
import 'get_cluster_node_config_ephemeral_storage_config.dart';
import 'get_cluster_node_config_ephemeral_storage_local_ssd_config.dart';
import 'get_cluster_node_config_fast_socket.dart';
import 'get_cluster_node_config_gcfs_config.dart';
import 'get_cluster_node_config_guest_accelerator.dart';
import 'get_cluster_node_config_gvnic.dart';
import 'get_cluster_node_config_host_maintenance_policy.dart';
import 'get_cluster_node_config_kubelet_config.dart';
import 'get_cluster_node_config_linux_node_config.dart';
import 'get_cluster_node_config_local_nvme_ssd_block_config.dart';
import 'get_cluster_node_config_reservation_affinity.dart';
import 'get_cluster_node_config_sandbox_config.dart';
import 'get_cluster_node_config_secondary_boot_disk.dart';
import 'get_cluster_node_config_shielded_instance_config.dart';
import 'get_cluster_node_config_sole_tenant_config.dart';
import 'get_cluster_node_config_taint.dart';
import 'get_cluster_node_config_windows_node_config.dart';
import 'get_cluster_node_config_workload_metadata_config.dart';

class GetClusterNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final pulumi.Input<List<GetClusterNodeConfigAdvancedMachineFeature>> advancedMachineFeatures;
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final pulumi.Input<String> bootDiskKmsKey;
  /// Boot disk configuration for node pools nodes.
  final pulumi.Input<List<GetClusterNodeConfigBootDisk>> bootDisks;
  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final pulumi.Input<List<GetClusterNodeConfigConfidentialNode>> confidentialNodes;
  /// Parameters for containerd configuration.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfig>> containerdConfigs;
  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final pulumi.Input<int> diskSizeGb;
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final pulumi.Input<String> diskType;
  /// List of kubernetes taints applied to each node.
  final pulumi.Input<List<GetClusterNodeConfigEffectiveTaint>> effectiveTaints;
  /// If enabled boot disks are configured with confidential mode.
  final pulumi.Input<bool> enableConfidentialStorage;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<List<GetClusterNodeConfigEphemeralStorageConfig>> ephemeralStorageConfigs;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<List<GetClusterNodeConfigEphemeralStorageLocalSsdConfig>> ephemeralStorageLocalSsdConfigs;
  /// Enable or disable NCCL Fast Socket in the node pool.
  final pulumi.Input<List<GetClusterNodeConfigFastSocket>> fastSockets;
  /// Enables Flex Start provisioning model for the node pool
  final pulumi.Input<bool> flexStart;
  /// GCFS configuration for this node.
  final pulumi.Input<List<GetClusterNodeConfigGcfsConfig>> gcfsConfigs;
  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<GetClusterNodeConfigGuestAccelerator>> guestAccelerators;
  /// Enable or disable gvnic in the node pool.
  final pulumi.Input<List<GetClusterNodeConfigGvnic>> gvnics;
  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final pulumi.Input<List<GetClusterNodeConfigHostMaintenancePolicy>> hostMaintenancePolicies;
  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final pulumi.Input<String> imageType;
  /// Node kubelet configs.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfig>> kubeletConfigs;
  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final pulumi.Input<Map<String, String>> labels;
  /// Parameters that can be configured on Linux nodes.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfig>> linuxNodeConfigs;
  /// Parameters for raw-block local NVMe SSDs.
  final pulumi.Input<List<GetClusterNodeConfigLocalNvmeSsdBlockConfig>> localNvmeSsdBlockConfigs;
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
  final pulumi.Input<List<GetClusterNodeConfigReservationAffinity>> reservationAffinities;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final pulumi.Input<Map<String, String>> resourceLabels;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;
  /// Sandbox configuration for this node.
  final pulumi.Input<List<GetClusterNodeConfigSandboxConfig>> sandboxConfigs;
  /// Secondary boot disks for preloading data or container images.
  final pulumi.Input<List<GetClusterNodeConfigSecondaryBootDisk>> secondaryBootDisks;
  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final pulumi.Input<String> serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<List<GetClusterNodeConfigShieldedInstanceConfig>> shieldedInstanceConfigs;
  /// Node affinity options for sole tenant node pools.
  final pulumi.Input<List<GetClusterNodeConfigSoleTenantConfig>> soleTenantConfigs;
  /// Whether the nodes are created as spot VM instances.
  final pulumi.Input<bool> spot;
  /// The list of Storage Pools where boot disks are provisioned.
  final pulumi.Input<List<String>> storagePools;
  /// The list of instance tags applied to all nodes.
  final pulumi.Input<List<String>> tags;
  /// List of Kubernetes taints to be applied to each node.
  final pulumi.Input<List<GetClusterNodeConfigTaint>> taints;
  /// Parameters that can be configured on Windows nodes.
  final pulumi.Input<List<GetClusterNodeConfigWindowsNodeConfig>> windowsNodeConfigs;
  /// The workload metadata configuration for this node.
  final pulumi.Input<List<GetClusterNodeConfigWorkloadMetadataConfig>> workloadMetadataConfigs;

  /// Creates a new [GetClusterNodeConfig].
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
  GetClusterNodeConfig({
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
      'advancedMachineFeatures': pulumi.Input.mapInputValue<List<GetClusterNodeConfigAdvancedMachineFeature>, List<Map<String, dynamic>>>(advancedMachineFeatures, (value) => pulumi.Input.encodeList<GetClusterNodeConfigAdvancedMachineFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskKmsKey': bootDiskKmsKey,
      'bootDisks': pulumi.Input.mapInputValue<List<GetClusterNodeConfigBootDisk>, List<Map<String, dynamic>>>(bootDisks, (value) => pulumi.Input.encodeList<GetClusterNodeConfigBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'confidentialNodes': pulumi.Input.mapInputValue<List<GetClusterNodeConfigConfidentialNode>, List<Map<String, dynamic>>>(confidentialNodes, (value) => pulumi.Input.encodeList<GetClusterNodeConfigConfidentialNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerdConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfig>, List<Map<String, dynamic>>>(containerdConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'effectiveTaints': pulumi.Input.mapInputValue<List<GetClusterNodeConfigEffectiveTaint>, List<Map<String, dynamic>>>(effectiveTaints, (value) => pulumi.Input.encodeList<GetClusterNodeConfigEffectiveTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableConfidentialStorage': enableConfidentialStorage,
      'ephemeralStorageConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigEphemeralStorageConfig>, List<Map<String, dynamic>>>(ephemeralStorageConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigEphemeralStorageConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorageLocalSsdConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigEphemeralStorageLocalSsdConfig>, List<Map<String, dynamic>>>(ephemeralStorageLocalSsdConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigEphemeralStorageLocalSsdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fastSockets': pulumi.Input.mapInputValue<List<GetClusterNodeConfigFastSocket>, List<Map<String, dynamic>>>(fastSockets, (value) => pulumi.Input.encodeList<GetClusterNodeConfigFastSocket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flexStart': flexStart,
      'gcfsConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigGcfsConfig>, List<Map<String, dynamic>>>(gcfsConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigGcfsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestAccelerators': pulumi.Input.mapInputValue<List<GetClusterNodeConfigGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<GetClusterNodeConfigGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gvnics': pulumi.Input.mapInputValue<List<GetClusterNodeConfigGvnic>, List<Map<String, dynamic>>>(gvnics, (value) => pulumi.Input.encodeList<GetClusterNodeConfigGvnic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostMaintenancePolicies': pulumi.Input.mapInputValue<List<GetClusterNodeConfigHostMaintenancePolicy>, List<Map<String, dynamic>>>(hostMaintenancePolicies, (value) => pulumi.Input.encodeList<GetClusterNodeConfigHostMaintenancePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageType': imageType,
      'kubeletConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfig>, List<Map<String, dynamic>>>(kubeletConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': labels,
      'linuxNodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfig>, List<Map<String, dynamic>>>(linuxNodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localNvmeSsdBlockConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLocalNvmeSsdBlockConfig>, List<Map<String, dynamic>>>(localNvmeSsdBlockConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLocalNvmeSsdBlockConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'reservationAffinities': pulumi.Input.mapInputValue<List<GetClusterNodeConfigReservationAffinity>, List<Map<String, dynamic>>>(reservationAffinities, (value) => pulumi.Input.encodeList<GetClusterNodeConfigReservationAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceLabels': resourceLabels,
      'resourceManagerTags': resourceManagerTags,
      'sandboxConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigSandboxConfig>, List<Map<String, dynamic>>>(sandboxConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigSandboxConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryBootDisks': pulumi.Input.mapInputValue<List<GetClusterNodeConfigSecondaryBootDisk>, List<Map<String, dynamic>>>(secondaryBootDisks, (value) => pulumi.Input.encodeList<GetClusterNodeConfigSecondaryBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': serviceAccount,
      'shieldedInstanceConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigShieldedInstanceConfig>, List<Map<String, dynamic>>>(shieldedInstanceConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigShieldedInstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'soleTenantConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigSoleTenantConfig>, List<Map<String, dynamic>>>(soleTenantConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigSoleTenantConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spot': spot,
      'storagePools': storagePools,
      'tags': tags,
      'taints': pulumi.Input.mapInputValue<List<GetClusterNodeConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<GetClusterNodeConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigWindowsNodeConfig>, List<Map<String, dynamic>>>(windowsNodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigWindowsNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadMetadataConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigWorkloadMetadataConfig>, List<Map<String, dynamic>>>(workloadMetadataConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfig(
      advancedMachineFeatures: (pulumi.Input.decodeList<GetClusterNodeConfigAdvancedMachineFeature>(map['advancedMachineFeatures'], (value) => GetClusterNodeConfigAdvancedMachineFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDiskKmsKey: (map['bootDiskKmsKey'] as String).input(),
      bootDisks: (pulumi.Input.decodeList<GetClusterNodeConfigBootDisk>(map['bootDisks'], (value) => GetClusterNodeConfigBootDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      confidentialNodes: (pulumi.Input.decodeList<GetClusterNodeConfigConfidentialNode>(map['confidentialNodes'], (value) => GetClusterNodeConfigConfidentialNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerdConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfig>(map['containerdConfigs'], (value) => GetClusterNodeConfigContainerdConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskSizeGb: (map['diskSizeGb'] as int).input(),
      diskType: (map['diskType'] as String).input(),
      effectiveTaints: (pulumi.Input.decodeList<GetClusterNodeConfigEffectiveTaint>(map['effectiveTaints'], (value) => GetClusterNodeConfigEffectiveTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableConfidentialStorage: (map['enableConfidentialStorage'] as bool).input(),
      ephemeralStorageConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigEphemeralStorageConfig>(map['ephemeralStorageConfigs'], (value) => GetClusterNodeConfigEphemeralStorageConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ephemeralStorageLocalSsdConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigEphemeralStorageLocalSsdConfig>(map['ephemeralStorageLocalSsdConfigs'], (value) => GetClusterNodeConfigEphemeralStorageLocalSsdConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fastSockets: (pulumi.Input.decodeList<GetClusterNodeConfigFastSocket>(map['fastSockets'], (value) => GetClusterNodeConfigFastSocket.fromMap((value as Map).cast<String, dynamic>()))).input(),
      flexStart: (map['flexStart'] as bool).input(),
      gcfsConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigGcfsConfig>(map['gcfsConfigs'], (value) => GetClusterNodeConfigGcfsConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      guestAccelerators: (pulumi.Input.decodeList<GetClusterNodeConfigGuestAccelerator>(map['guestAccelerators'], (value) => GetClusterNodeConfigGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gvnics: (pulumi.Input.decodeList<GetClusterNodeConfigGvnic>(map['gvnics'], (value) => GetClusterNodeConfigGvnic.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostMaintenancePolicies: (pulumi.Input.decodeList<GetClusterNodeConfigHostMaintenancePolicy>(map['hostMaintenancePolicies'], (value) => GetClusterNodeConfigHostMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageType: (map['imageType'] as String).input(),
      kubeletConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfig>(map['kubeletConfigs'], (value) => GetClusterNodeConfigKubeletConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      linuxNodeConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfig>(map['linuxNodeConfigs'], (value) => GetClusterNodeConfigLinuxNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localNvmeSsdBlockConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigLocalNvmeSsdBlockConfig>(map['localNvmeSsdBlockConfigs'], (value) => GetClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSsdCount: (map['localSsdCount'] as int).input(),
      localSsdEncryptionMode: (map['localSsdEncryptionMode'] as String).input(),
      loggingVariant: (map['loggingVariant'] as String).input(),
      machineType: (map['machineType'] as String).input(),
      maxRunDuration: (map['maxRunDuration'] as String).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
      nodeGroup: (map['nodeGroup'] as String).input(),
      oauthScopes: ((map['oauthScopes'] as List).cast<String>()).input(),
      preemptible: (map['preemptible'] as bool).input(),
      reservationAffinities: (pulumi.Input.decodeList<GetClusterNodeConfigReservationAffinity>(map['reservationAffinities'], (value) => GetClusterNodeConfigReservationAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceLabels: ((map['resourceLabels'] as Map).cast<String, String>()).input(),
      resourceManagerTags: ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
      sandboxConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigSandboxConfig>(map['sandboxConfigs'], (value) => GetClusterNodeConfigSandboxConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryBootDisks: (pulumi.Input.decodeList<GetClusterNodeConfigSecondaryBootDisk>(map['secondaryBootDisks'], (value) => GetClusterNodeConfigSecondaryBootDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      shieldedInstanceConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigShieldedInstanceConfig>(map['shieldedInstanceConfigs'], (value) => GetClusterNodeConfigShieldedInstanceConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      soleTenantConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigSoleTenantConfig>(map['soleTenantConfigs'], (value) => GetClusterNodeConfigSoleTenantConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spot: (map['spot'] as bool).input(),
      storagePools: ((map['storagePools'] as List).cast<String>()).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      taints: (pulumi.Input.decodeList<GetClusterNodeConfigTaint>(map['taints'], (value) => GetClusterNodeConfigTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsNodeConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigWindowsNodeConfig>(map['windowsNodeConfigs'], (value) => GetClusterNodeConfigWindowsNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workloadMetadataConfigs: (pulumi.Input.decodeList<GetClusterNodeConfigWorkloadMetadataConfig>(map['workloadMetadataConfigs'], (value) => GetClusterNodeConfigWorkloadMetadataConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

