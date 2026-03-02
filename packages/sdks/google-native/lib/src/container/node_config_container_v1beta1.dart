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
  NodeConfigContainerV1beta1({
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
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfigContainerV1beta1>(map['accelerators'], (value) => AcceleratorConfigContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (AdvancedMachineFeaturesContainerV1beta1.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())).input(),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null ? null : (map['bootDiskKmsKey'] as String).input(),
      confidentialNodes: map['confidentialNodes'] == null ? null : (ConfidentialNodesContainerV1beta1.fromMap((map['confidentialNodes'] as Map).cast<String, dynamic>())).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      enableConfidentialStorage: map['enableConfidentialStorage'] == null ? null : (map['enableConfidentialStorage'] as bool).input(),
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null ? null : (EphemeralStorageConfig.fromMap((map['ephemeralStorageConfig'] as Map).cast<String, dynamic>())).input(),
      ephemeralStorageLocalSsdConfig: map['ephemeralStorageLocalSsdConfig'] == null ? null : (EphemeralStorageLocalSsdConfigContainerV1beta1.fromMap((map['ephemeralStorageLocalSsdConfig'] as Map).cast<String, dynamic>())).input(),
      fastSocket: map['fastSocket'] == null ? null : (FastSocketContainerV1beta1.fromMap((map['fastSocket'] as Map).cast<String, dynamic>())).input(),
      gcfsConfig: map['gcfsConfig'] == null ? null : (GcfsConfigContainerV1beta1.fromMap((map['gcfsConfig'] as Map).cast<String, dynamic>())).input(),
      gvnic: map['gvnic'] == null ? null : (VirtualNICContainerV1beta1.fromMap((map['gvnic'] as Map).cast<String, dynamic>())).input(),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null ? null : (HostMaintenancePolicy.fromMap((map['hostMaintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      imageType: map['imageType'] == null ? null : (map['imageType'] as String).input(),
      kubeletConfig: map['kubeletConfig'] == null ? null : (NodeKubeletConfigContainerV1beta1.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      linuxNodeConfig: map['linuxNodeConfig'] == null ? null : (LinuxNodeConfigContainerV1beta1.fromMap((map['linuxNodeConfig'] as Map).cast<String, dynamic>())).input(),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null ? null : (LocalNvmeSsdBlockConfigContainerV1beta1.fromMap((map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>())).input(),
      localSsdCount: map['localSsdCount'] == null ? null : (map['localSsdCount'] as int).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (NodePoolLoggingConfigContainerV1beta1.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      nodeGroup: map['nodeGroup'] == null ? null : (map['nodeGroup'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (ReservationAffinityContainerV1beta1.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourceLabels: map['resourceLabels'] == null ? null : ((map['resourceLabels'] as Map).cast<String, String>()).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : (ResourceManagerTagsContainerV1beta1.fromMap((map['resourceManagerTags'] as Map).cast<String, dynamic>())).input(),
      sandboxConfig: map['sandboxConfig'] == null ? null : (SandboxConfigContainerV1beta1.fromMap((map['sandboxConfig'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfigContainerV1beta1.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      soleTenantConfig: map['soleTenantConfig'] == null ? null : (SoleTenantConfigContainerV1beta1.fromMap((map['soleTenantConfig'] as Map).cast<String, dynamic>())).input(),
      spot: map['spot'] == null ? null : (map['spot'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<NodeTaintContainerV1beta1>(map['taints'], (value) => NodeTaintContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsNodeConfig: map['windowsNodeConfig'] == null ? null : (WindowsNodeConfigContainerV1beta1.fromMap((map['windowsNodeConfig'] as Map).cast<String, dynamic>())).input(),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null ? null : (WorkloadMetadataConfigContainerV1beta1.fromMap((map['workloadMetadataConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

