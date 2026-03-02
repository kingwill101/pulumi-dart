// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_advanced_machine_features.dart';
import 'node_pool_node_config_boot_disk.dart';
import 'node_pool_node_config_confidential_nodes.dart';
import 'node_pool_node_config_containerd_config.dart';
import 'node_pool_node_config_effective_taint.dart';
import 'node_pool_node_config_ephemeral_storage_config.dart';
import 'node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import 'node_pool_node_config_fast_socket.dart';
import 'node_pool_node_config_gcfs_config.dart';
import 'node_pool_node_config_guest_accelerator.dart';
import 'node_pool_node_config_gvnic.dart';
import 'node_pool_node_config_host_maintenance_policy.dart';
import 'node_pool_node_config_kubelet_config.dart';
import 'node_pool_node_config_linux_node_config.dart';
import 'node_pool_node_config_local_nvme_ssd_block_config.dart';
import 'node_pool_node_config_reservation_affinity.dart';
import 'node_pool_node_config_sandbox_config.dart';
import 'node_pool_node_config_secondary_boot_disk.dart';
import 'node_pool_node_config_shielded_instance_config.dart';
import 'node_pool_node_config_sole_tenant_config.dart';
import 'node_pool_node_config_taint.dart';
import 'node_pool_node_config_windows_node_config.dart';
import 'node_pool_node_config_workload_metadata_config.dart';

class NodePoolNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final pulumi.Input<NodePoolNodeConfigAdvancedMachineFeatures>? advancedMachineFeatures;
  /// Boot disk configuration for node pools nodes.
  final pulumi.Input<NodePoolNodeConfigBootDisk>? bootDisk;
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final pulumi.Input<String>? bootDiskKmsKey;
  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final pulumi.Input<NodePoolNodeConfigConfidentialNodes>? confidentialNodes;
  /// Parameters for containerd configuration.
  final pulumi.Input<NodePoolNodeConfigContainerdConfig>? containerdConfig;
  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final pulumi.Input<int>? diskSizeGb;
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final pulumi.Input<String>? diskType;
  /// List of kubernetes taints applied to each node.
  final pulumi.Input<List<NodePoolNodeConfigEffectiveTaint>>? effectiveTaints;
  /// If enabled boot disks are configured with confidential mode.
  final pulumi.Input<bool>? enableConfidentialStorage;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<NodePoolNodeConfigEphemeralStorageConfig>? ephemeralStorageConfig;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<NodePoolNodeConfigEphemeralStorageLocalSsdConfig>? ephemeralStorageLocalSsdConfig;
  /// Enable or disable NCCL Fast Socket in the node pool.
  final pulumi.Input<NodePoolNodeConfigFastSocket>? fastSocket;
  /// Enables Flex Start provisioning model for the node pool
  final pulumi.Input<bool>? flexStart;
  /// GCFS configuration for this node.
  final pulumi.Input<NodePoolNodeConfigGcfsConfig>? gcfsConfig;
  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<NodePoolNodeConfigGuestAccelerator>>? guestAccelerators;
  /// Enable or disable gvnic in the node pool.
  final pulumi.Input<NodePoolNodeConfigGvnic>? gvnic;
  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final pulumi.Input<NodePoolNodeConfigHostMaintenancePolicy>? hostMaintenancePolicy;
  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final pulumi.Input<String>? imageType;
  /// Node kubelet configs.
  final pulumi.Input<NodePoolNodeConfigKubeletConfig>? kubeletConfig;
  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final pulumi.Input<Map<String, String>>? labels;
  /// Parameters that can be configured on Linux nodes.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfig>? linuxNodeConfig;
  /// Parameters for raw-block local NVMe SSDs.
  final pulumi.Input<NodePoolNodeConfigLocalNvmeSsdBlockConfig>? localNvmeSsdBlockConfig;
  /// The number of local SSD disks to be attached to the node.
  final pulumi.Input<int>? localSsdCount;
  /// LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  final pulumi.Input<String>? localSsdEncryptionMode;
  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final pulumi.Input<String>? loggingVariant;
  /// The name of a Google Compute Engine machine type.
  final pulumi.Input<String>? machineType;
  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final pulumi.Input<String>? maxRunDuration;
  /// The metadata key/value pairs assigned to instances in the cluster.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  final pulumi.Input<String>? minCpuPlatform;
  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  final pulumi.Input<String>? nodeGroup;
  /// The set of Google API scopes to be made available on all of the node VMs.
  final pulumi.Input<List<String>>? oauthScopes;
  /// Whether the nodes are created as preemptible VM instances.
  final pulumi.Input<bool>? preemptible;
  /// The reservation affinity configuration for the node pool.
  final pulumi.Input<NodePoolNodeConfigReservationAffinity>? reservationAffinity;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final pulumi.Input<Map<String, String>>? resourceLabels;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// Sandbox configuration for this node.
  final pulumi.Input<NodePoolNodeConfigSandboxConfig>? sandboxConfig;
  /// Secondary boot disks for preloading data or container images.
  final pulumi.Input<List<NodePoolNodeConfigSecondaryBootDisk>>? secondaryBootDisks;
  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final pulumi.Input<String>? serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<NodePoolNodeConfigShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Node affinity options for sole tenant node pools.
  final pulumi.Input<NodePoolNodeConfigSoleTenantConfig>? soleTenantConfig;
  /// Whether the nodes are created as spot VM instances.
  final pulumi.Input<bool>? spot;
  /// The list of Storage Pools where boot disks are provisioned.
  final pulumi.Input<List<String>>? storagePools;
  /// The list of instance tags applied to all nodes.
  final pulumi.Input<List<String>>? tags;
  /// List of Kubernetes taints to be applied to each node.
  final pulumi.Input<List<NodePoolNodeConfigTaint>>? taints;
  /// Parameters that can be configured on Windows nodes.
  final pulumi.Input<NodePoolNodeConfigWindowsNodeConfig>? windowsNodeConfig;
  /// The workload metadata configuration for this node.
  final pulumi.Input<NodePoolNodeConfigWorkloadMetadataConfig>? workloadMetadataConfig;

  /// Creates a new [NodePoolNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling advanced machine features.
  /// [bootDisk] Boot disk configuration for node pools nodes.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  /// [confidentialNodes] Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  /// [containerdConfig] Parameters for containerd configuration.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] If enabled boot disks are configured with confidential mode.
  /// [ephemeralStorageConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [ephemeralStorageLocalSsdConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [fastSocket] Enable or disable NCCL Fast Socket in the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool
  /// [gcfsConfig] GCFS configuration for this node.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnic] Enable or disable gvnic in the node pool.
  /// [hostMaintenancePolicy] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  /// [kubeletConfig] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfig] Parameters for raw-block local NVMe SSDs.
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
  /// [reservationAffinity] The reservation affinity configuration for the node pool.
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [secondaryBootDisks] Secondary boot disks for preloading data or container images.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [soleTenantConfig] Node affinity options for sole tenant node pools.
  /// [spot] Whether the nodes are created as spot VM instances.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes.
  /// [taints] List of Kubernetes taints to be applied to each node.
  /// [windowsNodeConfig] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfig] The workload metadata configuration for this node.
  NodePoolNodeConfig({
    this.advancedMachineFeatures,
    this.bootDisk,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.containerdConfig,
    this.diskSizeGb,
    this.diskType,
    this.effectiveTaints,
    this.enableConfidentialStorage,
    this.ephemeralStorageConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.flexStart,
    this.gcfsConfig,
    this.guestAccelerators,
    this.gvnic,
    this.hostMaintenancePolicy,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.localSsdCount,
    this.localSsdEncryptionMode,
    this.loggingVariant,
    this.machineType,
    this.maxRunDuration,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.resourceLabels,
    this.resourceManagerTags,
    this.sandboxConfig,
    this.secondaryBootDisks,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.spot,
    this.storagePools,
    this.tags,
    this.taints,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigConfidentialNodes, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'containerdConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigContainerdConfig, Map<String, dynamic>>(containerdConfig, (value) => value.toMap()),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'effectiveTaints': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigEffectiveTaint>, List<Map<String, dynamic>>>(effectiveTaints, (value) => pulumi.Input.encodeList<NodePoolNodeConfigEffectiveTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableConfidentialStorage': ?enableConfidentialStorage,
      'ephemeralStorageConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigEphemeralStorageConfig, Map<String, dynamic>>(ephemeralStorageConfig, (value) => value.toMap()),
      'ephemeralStorageLocalSsdConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigEphemeralStorageLocalSsdConfig, Map<String, dynamic>>(ephemeralStorageLocalSsdConfig, (value) => value.toMap()),
      'fastSocket': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigFastSocket, Map<String, dynamic>>(fastSocket, (value) => value.toMap()),
      'flexStart': ?flexStart,
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigGcfsConfig, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<NodePoolNodeConfigGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gvnic': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigGvnic, Map<String, dynamic>>(gvnic, (value) => value.toMap()),
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigHostMaintenancePolicy, Map<String, dynamic>>(hostMaintenancePolicy, (value) => value.toMap()),
      'imageType': ?imageType,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'labels': ?labels,
      'linuxNodeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfig, Map<String, dynamic>>(linuxNodeConfig, (value) => value.toMap()),
      'localNvmeSsdBlockConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLocalNvmeSsdBlockConfig, Map<String, dynamic>>(localNvmeSsdBlockConfig, (value) => value.toMap()),
      'localSsdCount': ?localSsdCount,
      'localSsdEncryptionMode': ?localSsdEncryptionMode,
      'loggingVariant': ?loggingVariant,
      'machineType': ?machineType,
      'maxRunDuration': ?maxRunDuration,
      'metadata': ?metadata,
      'minCpuPlatform': ?minCpuPlatform,
      'nodeGroup': ?nodeGroup,
      'oauthScopes': ?oauthScopes,
      'preemptible': ?preemptible,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceLabels': ?resourceLabels,
      'resourceManagerTags': ?resourceManagerTags,
      'sandboxConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigSandboxConfig, Map<String, dynamic>>(sandboxConfig, (value) => value.toMap()),
      'secondaryBootDisks': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigSecondaryBootDisk>, List<Map<String, dynamic>>>(secondaryBootDisks, (value) => pulumi.Input.encodeList<NodePoolNodeConfigSecondaryBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'soleTenantConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigSoleTenantConfig, Map<String, dynamic>>(soleTenantConfig, (value) => value.toMap()),
      'spot': ?spot,
      'storagePools': ?storagePools,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodePoolNodeConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigWindowsNodeConfig, Map<String, dynamic>>(windowsNodeConfig, (value) => value.toMap()),
      'workloadMetadataConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(workloadMetadataConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (NodePoolNodeConfigAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())).input(),
      bootDisk: map['bootDisk'] == null ? null : (NodePoolNodeConfigBootDisk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>())).input(),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null ? null : (map['bootDiskKmsKey'] as String).input(),
      confidentialNodes: map['confidentialNodes'] == null ? null : (NodePoolNodeConfigConfidentialNodes.fromMap((map['confidentialNodes'] as Map).cast<String, dynamic>())).input(),
      containerdConfig: map['containerdConfig'] == null ? null : (NodePoolNodeConfigContainerdConfig.fromMap((map['containerdConfig'] as Map).cast<String, dynamic>())).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      effectiveTaints: map['effectiveTaints'] == null ? null : (pulumi.Input.decodeList<NodePoolNodeConfigEffectiveTaint>(map['effectiveTaints'], (value) => NodePoolNodeConfigEffectiveTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableConfidentialStorage: map['enableConfidentialStorage'] == null ? null : (map['enableConfidentialStorage'] as bool).input(),
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null ? null : (NodePoolNodeConfigEphemeralStorageConfig.fromMap((map['ephemeralStorageConfig'] as Map).cast<String, dynamic>())).input(),
      ephemeralStorageLocalSsdConfig: map['ephemeralStorageLocalSsdConfig'] == null ? null : (NodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap((map['ephemeralStorageLocalSsdConfig'] as Map).cast<String, dynamic>())).input(),
      fastSocket: map['fastSocket'] == null ? null : (NodePoolNodeConfigFastSocket.fromMap((map['fastSocket'] as Map).cast<String, dynamic>())).input(),
      flexStart: map['flexStart'] == null ? null : (map['flexStart'] as bool).input(),
      gcfsConfig: map['gcfsConfig'] == null ? null : (NodePoolNodeConfigGcfsConfig.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>())).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<NodePoolNodeConfigGuestAccelerator>(map['guestAccelerators'], (value) => NodePoolNodeConfigGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gvnic: map['gvnic'] == null ? null : (NodePoolNodeConfigGvnic.fromMap((map['gvnic'] as Map).cast<String, dynamic>())).input(),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null ? null : (NodePoolNodeConfigHostMaintenancePolicy.fromMap((map['hostMaintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      imageType: map['imageType'] == null ? null : (map['imageType'] as String).input(),
      kubeletConfig: map['kubeletConfig'] == null ? null : (NodePoolNodeConfigKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      linuxNodeConfig: map['linuxNodeConfig'] == null ? null : (NodePoolNodeConfigLinuxNodeConfig.fromMap((map['linuxNodeConfig'] as Map).cast<String, dynamic>())).input(),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null ? null : (NodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap((map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>())).input(),
      localSsdCount: map['localSsdCount'] == null ? null : (map['localSsdCount'] as int).input(),
      localSsdEncryptionMode: map['localSsdEncryptionMode'] == null ? null : (map['localSsdEncryptionMode'] as String).input(),
      loggingVariant: map['loggingVariant'] == null ? null : (map['loggingVariant'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      maxRunDuration: map['maxRunDuration'] == null ? null : (map['maxRunDuration'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      nodeGroup: map['nodeGroup'] == null ? null : (map['nodeGroup'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (NodePoolNodeConfigReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourceLabels: map['resourceLabels'] == null ? null : ((map['resourceLabels'] as Map).cast<String, String>()).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
      sandboxConfig: map['sandboxConfig'] == null ? null : (NodePoolNodeConfigSandboxConfig.fromMap((map['sandboxConfig'] as Map).cast<String, dynamic>())).input(),
      secondaryBootDisks: map['secondaryBootDisks'] == null ? null : (pulumi.Input.decodeList<NodePoolNodeConfigSecondaryBootDisk>(map['secondaryBootDisks'], (value) => NodePoolNodeConfigSecondaryBootDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (NodePoolNodeConfigShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      soleTenantConfig: map['soleTenantConfig'] == null ? null : (NodePoolNodeConfigSoleTenantConfig.fromMap((map['soleTenantConfig'] as Map).cast<String, dynamic>())).input(),
      spot: map['spot'] == null ? null : (map['spot'] as bool).input(),
      storagePools: map['storagePools'] == null ? null : ((map['storagePools'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<NodePoolNodeConfigTaint>(map['taints'], (value) => NodePoolNodeConfigTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsNodeConfig: map['windowsNodeConfig'] == null ? null : (NodePoolNodeConfigWindowsNodeConfig.fromMap((map['windowsNodeConfig'] as Map).cast<String, dynamic>())).input(),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null ? null : (NodePoolNodeConfigWorkloadMetadataConfig.fromMap((map['workloadMetadataConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

