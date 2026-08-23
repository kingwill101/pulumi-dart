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
import 'node_pool_node_config_node_image_config.dart';
import 'node_pool_node_config_reservation_affinity.dart';
import 'node_pool_node_config_sandbox_config.dart';
import 'node_pool_node_config_secondary_boot_disk.dart';
import 'node_pool_node_config_shielded_instance_config.dart';
import 'node_pool_node_config_sole_tenant_config.dart';
import 'node_pool_node_config_taint.dart';
import 'node_pool_node_config_taint_config.dart';
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
  /// The type of GPUDirect strategy to enable on the node.
  final pulumi.Input<String>? gpudirectStrategy;
  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<NodePoolNodeConfigGuestAccelerator>>? guestAccelerators;
  /// Enable or disable gvnic in the node pool.
  final pulumi.Input<NodePoolNodeConfigGvnic>? gvnic;
  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final pulumi.Input<NodePoolNodeConfigHostMaintenancePolicy>? hostMaintenancePolicy;
  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final pulumi.Input<String>? imageType;
  /// Node kubelet configs. Structure is documented below.
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
  /// The node image configuration to use for this node pool.
  final pulumi.Input<List<NodePoolNodeConfigNodeImageConfig>>? nodeImageConfigs;
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
  /// Taint configuration for the node pool. Structure is documented below.
  final pulumi.Input<NodePoolNodeConfigTaintConfig>? taintConfig;
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
  /// [gpudirectStrategy] The type of GPUDirect strategy to enable on the node.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnic] Enable or disable gvnic in the node pool.
  /// [hostMaintenancePolicy] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  /// [kubeletConfig] Node kubelet configs. Structure is documented below.
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
  /// [nodeImageConfigs] The node image configuration to use for this node pool.
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
  /// [taintConfig] Taint configuration for the node pool. Structure is documented below.
  /// [taints] List of Kubernetes taints to be applied to each node.
  /// [windowsNodeConfig] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfig] The workload metadata configuration for this node.
  const NodePoolNodeConfig({
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
    this.gpudirectStrategy,
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
    this.nodeImageConfigs,
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
    this.taintConfig,
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
      'gpudirectStrategy': ?gpudirectStrategy,
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
      'nodeImageConfigs': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigNodeImageConfig>, List<Map<String, dynamic>>>(nodeImageConfigs, (value) => pulumi.Input.encodeList<NodePoolNodeConfigNodeImageConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'taintConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigTaintConfig, Map<String, dynamic>>(taintConfig, (value) => value.toMap()),
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodePoolNodeConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigWindowsNodeConfig, Map<String, dynamic>>(windowsNodeConfig, (value) => value.toMap()),
      'workloadMetadataConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(workloadMetadataConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiskKmsKey: (() { final guardedValue = map['bootDiskKmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigConfidentialNodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerdConfig: (() { final guardedValue = map['containerdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigContainerdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveTaints: (() { final guardedValue = map['effectiveTaints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNodeConfigEffectiveTaint>(guardedValue, (value) => NodePoolNodeConfigEffectiveTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableConfidentialStorage: (() { final guardedValue = map['enableConfidentialStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralStorageConfig: (() { final guardedValue = map['ephemeralStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigEphemeralStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralStorageLocalSsdConfig: (() { final guardedValue = map['ephemeralStorageLocalSsdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fastSocket: (() { final guardedValue = map['fastSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigFastSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flexStart: (() { final guardedValue = map['flexStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigGcfsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gpudirectStrategy: (() { final guardedValue = map['gpudirectStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNodeConfigGuestAccelerator>(guardedValue, (value) => NodePoolNodeConfigGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gvnic: (() { final guardedValue = map['gvnic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigGvnic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigHostMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      linuxNodeConfig: (() { final guardedValue = map['linuxNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localNvmeSsdBlockConfig: (() { final guardedValue = map['localNvmeSsdBlockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSsdCount: (() { final guardedValue = map['localSsdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localSsdEncryptionMode: (() { final guardedValue = map['localSsdEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingVariant: (() { final guardedValue = map['loggingVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroup: (() { final guardedValue = map['nodeGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeImageConfigs: (() { final guardedValue = map['nodeImageConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNodeConfigNodeImageConfig>(guardedValue, (value) => NodePoolNodeConfigNodeImageConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sandboxConfig: (() { final guardedValue = map['sandboxConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigSandboxConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryBootDisks: (() { final guardedValue = map['secondaryBootDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNodeConfigSecondaryBootDisk>(guardedValue, (value) => NodePoolNodeConfigSecondaryBootDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      soleTenantConfig: (() { final guardedValue = map['soleTenantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigSoleTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storagePools: (() { final guardedValue = map['storagePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taintConfig: (() { final guardedValue = map['taintConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigTaintConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolNodeConfigTaint>(guardedValue, (value) => NodePoolNodeConfigTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsNodeConfig: (() { final guardedValue = map['windowsNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigWindowsNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadMetadataConfig: (() { final guardedValue = map['workloadMetadataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigWorkloadMetadataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
