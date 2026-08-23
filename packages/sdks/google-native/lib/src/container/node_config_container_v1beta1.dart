// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_container_v1beta1.dart';
import 'advanced_machine_features_container_v1beta1.dart';
import 'confidential_nodes_container_v1beta1.dart';
import 'ephemeral_storage_config.dart';
import 'ephemeral_storage_local_ssd_config_container_v1beta1.dart';
import 'fast_socket_container_v1beta1.dart';
import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'linux_node_config_container_v1beta1.dart';
import 'local_nvme_ssd_block_config_container_v1beta1.dart';
import 'node_kubelet_config_container_v1beta1.dart';
import 'node_pool_logging_config_container_v1beta1.dart';
import 'node_taint_container_v1beta1.dart';
import 'reservation_affinity_container_v1beta1.dart';
import 'resource_manager_tags_container_v1beta1.dart';
import 'sandbox_config_container_v1beta1.dart';
import 'shielded_instance_config_container_v1beta1.dart';
import 'sole_tenant_config_container_v1beta1.dart';
import 'virtual_niccontainer_v1beta1.dart';
import 'windows_node_config_container_v1beta1.dart';
import 'workload_metadata_config_container_v1beta1.dart';

/// Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.
class NodeConfigContainerV1beta1 {
  /// A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  final pulumi.Input<List<AcceleratorConfigContainerV1beta1>>? accelerators;
  /// Advanced features for the Compute Engine VM.
  final pulumi.Input<AdvancedMachineFeaturesContainerV1beta1>? advancedMachineFeatures;
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final pulumi.Input<String>? bootDiskKmsKey;
  /// Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  final pulumi.Input<ConfidentialNodesContainerV1beta1>? confidentialNodes;
  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final pulumi.Input<int>? diskSizeGb;
  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final pulumi.Input<String>? diskType;
  /// Optional. Enable confidential storage on Hyperdisk. boot_disk_kms_key is required when enable_confidential_storage is true. This is only available for private preview.
  final pulumi.Input<bool>? enableConfidentialStorage;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final pulumi.Input<EphemeralStorageConfig>? ephemeralStorageConfig;
  /// Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk. This field is functionally equivalent to the ephemeral_storage_config
  final pulumi.Input<EphemeralStorageLocalSsdConfigContainerV1beta1>? ephemeralStorageLocalSsdConfig;
  /// Enable or disable NCCL fast socket for the node pool.
  final pulumi.Input<FastSocketContainerV1beta1>? fastSocket;
  /// GCFS (Google Container File System) configs.
  final pulumi.Input<GcfsConfigContainerV1beta1>? gcfsConfig;
  /// Enable or disable gvnic on the node pool.
  final pulumi.Input<VirtualNICContainerV1beta1>? gvnic;
  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final pulumi.Input<HostMaintenancePolicy>? hostMaintenancePolicy;
  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final pulumi.Input<String>? imageType;
  /// Node kubelet configs.
  final pulumi.Input<NodeKubeletConfigContainerV1beta1>? kubeletConfig;
  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final pulumi.Input<Map<String, String>>? labels;
  /// Parameters that can be configured on Linux nodes.
  final pulumi.Input<LinuxNodeConfigContainerV1beta1>? linuxNodeConfig;
  /// Parameters for using raw-block Local NVMe SSDs.
  final pulumi.Input<LocalNvmeSsdBlockConfigContainerV1beta1>? localNvmeSsdBlockConfig;
  /// The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  final pulumi.Input<int>? localSsdCount;
  /// Logging configuration.
  final pulumi.Input<NodePoolLoggingConfigContainerV1beta1>? loggingConfig;
  /// The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types). If unspecified, the default machine type is `e2-medium`.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-oslogin" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final pulumi.Input<String>? minCpuPlatform;
  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final pulumi.Input<String>? nodeGroup;
  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final pulumi.Input<List<String>>? oauthScopes;
  /// Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  final pulumi.Input<bool>? preemptible;
  /// The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  final pulumi.Input<ReservationAffinityContainerV1beta1>? reservationAffinity;
  /// The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  final pulumi.Input<Map<String, String>>? resourceLabels;
  /// A map of resource manager tag keys and values to be attached to the nodes.
  final pulumi.Input<ResourceManagerTagsContainerV1beta1>? resourceManagerTags;
  /// Sandbox configuration for this node.
  final pulumi.Input<SandboxConfigContainerV1beta1>? sandboxConfig;
  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final pulumi.Input<String>? serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigContainerV1beta1>? shieldedInstanceConfig;
  /// Parameters for node pools to be backed by shared sole tenant node groups.
  final pulumi.Input<SoleTenantConfigContainerV1beta1>? soleTenantConfig;
  /// Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  final pulumi.Input<bool>? spot;
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  final pulumi.Input<List<String>>? tags;
  /// List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  final pulumi.Input<List<NodeTaintContainerV1beta1>>? taints;
  /// Parameters that can be configured on Windows nodes.
  final pulumi.Input<WindowsNodeConfigContainerV1beta1>? windowsNodeConfig;
  /// The workload metadata configuration for this node.
  final pulumi.Input<WorkloadMetadataConfigContainerV1beta1>? workloadMetadataConfig;

  /// Creates a new [NodeConfigContainerV1beta1].
  /// [accelerators] A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  /// [advancedMachineFeatures] Advanced features for the Compute Engine VM.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [confidentialNodes] Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [enableConfidentialStorage] Optional. Enable confidential storage on Hyperdisk. boot_disk_kms_key is required when enable_confidential_storage is true. This is only available for private preview.
  /// [ephemeralStorageConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [ephemeralStorageLocalSsdConfig] Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk. This field is functionally equivalent to the ephemeral_storage_config
  /// [fastSocket] Enable or disable NCCL fast socket for the node pool.
  /// [gcfsConfig] GCFS (Google Container File System) configs.
  /// [gvnic] Enable or disable gvnic on the node pool.
  /// [hostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [kubeletConfig] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfig] Parameters for using raw-block Local NVMe SSDs.
  /// [localSsdCount] The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  /// [loggingConfig] Logging configuration.
  /// [machineType] The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types). If unspecified, the default machine type is `e2-medium`.
  /// [metadata] The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-oslogin" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  /// [preemptible] Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  /// [reservationAffinity] The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  /// [resourceLabels] The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  /// [resourceManagerTags] A map of resource manager tag keys and values to be attached to the nodes.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [soleTenantConfig] Parameters for node pools to be backed by shared sole tenant node groups.
  /// [spot] Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  /// [tags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  /// [taints] List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  /// [windowsNodeConfig] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfig] The workload metadata configuration for this node.
  const NodeConfigContainerV1beta1({
    this.accelerators,
    this.advancedMachineFeatures,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialStorage,
    this.ephemeralStorageConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.gvnic,
    this.hostMaintenancePolicy,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.localSsdCount,
    this.loggingConfig,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.resourceLabels,
    this.resourceManagerTags,
    this.sandboxConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.spot,
    this.tags,
    this.taints,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigContainerV1beta1>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesContainerV1beta1, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<ConfidentialNodesContainerV1beta1, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'enableConfidentialStorage': ?enableConfidentialStorage,
      'ephemeralStorageConfig': ?pulumi.Input.mapOptionalInputValue<EphemeralStorageConfig, Map<String, dynamic>>(ephemeralStorageConfig, (value) => value.toMap()),
      'ephemeralStorageLocalSsdConfig': ?pulumi.Input.mapOptionalInputValue<EphemeralStorageLocalSsdConfigContainerV1beta1, Map<String, dynamic>>(ephemeralStorageLocalSsdConfig, (value) => value.toMap()),
      'fastSocket': ?pulumi.Input.mapOptionalInputValue<FastSocketContainerV1beta1, Map<String, dynamic>>(fastSocket, (value) => value.toMap()),
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<GcfsConfigContainerV1beta1, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'gvnic': ?pulumi.Input.mapOptionalInputValue<VirtualNICContainerV1beta1, Map<String, dynamic>>(gvnic, (value) => value.toMap()),
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<HostMaintenancePolicy, Map<String, dynamic>>(hostMaintenancePolicy, (value) => value.toMap()),
      'imageType': ?imageType,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<NodeKubeletConfigContainerV1beta1, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'labels': ?labels,
      'linuxNodeConfig': ?pulumi.Input.mapOptionalInputValue<LinuxNodeConfigContainerV1beta1, Map<String, dynamic>>(linuxNodeConfig, (value) => value.toMap()),
      'localNvmeSsdBlockConfig': ?pulumi.Input.mapOptionalInputValue<LocalNvmeSsdBlockConfigContainerV1beta1, Map<String, dynamic>>(localNvmeSsdBlockConfig, (value) => value.toMap()),
      'localSsdCount': ?localSsdCount,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolLoggingConfigContainerV1beta1, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'machineType': ?machineType,
      'metadata': ?metadata,
      'minCpuPlatform': ?minCpuPlatform,
      'nodeGroup': ?nodeGroup,
      'oauthScopes': ?oauthScopes,
      'preemptible': ?preemptible,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityContainerV1beta1, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceLabels': ?resourceLabels,
      'resourceManagerTags': ?pulumi.Input.mapOptionalInputValue<ResourceManagerTagsContainerV1beta1, Map<String, dynamic>>(resourceManagerTags, (value) => value.toMap()),
      'sandboxConfig': ?pulumi.Input.mapOptionalInputValue<SandboxConfigContainerV1beta1, Map<String, dynamic>>(sandboxConfig, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigContainerV1beta1, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'soleTenantConfig': ?pulumi.Input.mapOptionalInputValue<SoleTenantConfigContainerV1beta1, Map<String, dynamic>>(soleTenantConfig, (value) => value.toMap()),
      'spot': ?spot,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeTaintContainerV1beta1>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeTaintContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfig': ?pulumi.Input.mapOptionalInputValue<WindowsNodeConfigContainerV1beta1, Map<String, dynamic>>(windowsNodeConfig, (value) => value.toMap()),
      'workloadMetadataConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadMetadataConfigContainerV1beta1, Map<String, dynamic>>(workloadMetadataConfig, (value) => value.toMap()),
    };
  }

  factory NodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigContainerV1beta1(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigContainerV1beta1>(guardedValue, (value) => AcceleratorConfigContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedMachineFeaturesContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiskKmsKey: (() { final guardedValue = map['bootDiskKmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialNodesContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialStorage: (() { final guardedValue = map['enableConfidentialStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralStorageConfig: (() { final guardedValue = map['ephemeralStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralStorageLocalSsdConfig: (() { final guardedValue = map['ephemeralStorageLocalSsdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralStorageLocalSsdConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fastSocket: (() { final guardedValue = map['fastSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FastSocketContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcfsConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gvnic: (() { final guardedValue = map['gvnic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNICContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeKubeletConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      linuxNodeConfig: (() { final guardedValue = map['linuxNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxNodeConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localNvmeSsdBlockConfig: (() { final guardedValue = map['localNvmeSsdBlockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalNvmeSsdBlockConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSsdCount: (() { final guardedValue = map['localSsdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolLoggingConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroup: (() { final guardedValue = map['nodeGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinityContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceManagerTagsContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sandboxConfig: (() { final guardedValue = map['sandboxConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SandboxConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      soleTenantConfig: (() { final guardedValue = map['soleTenantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoleTenantConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeTaintContainerV1beta1>(guardedValue, (value) => NodeTaintContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsNodeConfig: (() { final guardedValue = map['windowsNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsNodeConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadMetadataConfig: (() { final guardedValue = map['workloadMetadataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadMetadataConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
