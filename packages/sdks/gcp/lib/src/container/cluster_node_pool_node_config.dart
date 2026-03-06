// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_advanced_machine_features.dart';
import 'cluster_node_pool_node_config_boot_disk.dart';
import 'cluster_node_pool_node_config_confidential_nodes.dart';
import 'cluster_node_pool_node_config_containerd_config.dart';
import 'cluster_node_pool_node_config_effective_taint.dart';
import 'cluster_node_pool_node_config_ephemeral_storage_config.dart';
import 'cluster_node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import 'cluster_node_pool_node_config_fast_socket.dart';
import 'cluster_node_pool_node_config_gcfs_config.dart';
import 'cluster_node_pool_node_config_guest_accelerator.dart';
import 'cluster_node_pool_node_config_gvnic.dart';
import 'cluster_node_pool_node_config_host_maintenance_policy.dart';
import 'cluster_node_pool_node_config_kubelet_config.dart';
import 'cluster_node_pool_node_config_linux_node_config.dart';
import 'cluster_node_pool_node_config_local_nvme_ssd_block_config.dart';
import 'cluster_node_pool_node_config_reservation_affinity.dart';
import 'cluster_node_pool_node_config_sandbox_config.dart';
import 'cluster_node_pool_node_config_secondary_boot_disk.dart';
import 'cluster_node_pool_node_config_shielded_instance_config.dart';
import 'cluster_node_pool_node_config_sole_tenant_config.dart';
import 'cluster_node_pool_node_config_taint.dart';
import 'cluster_node_pool_node_config_windows_node_config.dart';
import 'cluster_node_pool_node_config_workload_metadata_config.dart';

class ClusterNodePoolNodeConfig {
  /// Specifies options for controlling
  /// advanced machine features. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigAdvancedMachineFeatures>? advancedMachineFeatures;
  /// Configuration of the node pool boot disk. Structure is documented below
  final pulumi.Input<ClusterNodePoolNodeConfigBootDisk>? bootDisk;
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: &lt;https://cloud.google.com/compute/docs/disks/customer-managed-encryption&gt;
  final pulumi.Input<String>? bootDiskKmsKey;
  /// Configuration for Confidential Nodes feature. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigConfidentialNodes>? confidentialNodes;
  /// Parameters to customize containerd runtime. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigContainerdConfig>? containerdConfig;
  /// Size of the disk attached to each node, specified
  /// in GB. The smallest allowed disk size is 10GB. Defaults to 100GB. This is being migrated to `boot_disk.size_gb`, and must match if specified in both places.
  /// Prefer configuring `boot_disk`.
  final pulumi.Input<int>? diskSizeGb;
  /// Type of the disk attached to each node
  /// (e.g. 'pd-standard', 'pd-balanced', 'pd-ssd', or 'hyperdisk-balanced'). Defaults to `hyperdisk-balanced` if `hyperdisk-balanced` is supported and `pd-balanced` is not supported for the machine type; otherwise defaults to `pd-balanced`. This is being migrated to `boot_disk.disk_type`, and must match if specified in both places. Prefer configuring `boot_disk`.
  final pulumi.Input<String>? diskType;
  /// List of kubernetes taints applied to each node.
  final pulumi.Input<List<ClusterNodePoolNodeConfigEffectiveTaint>>? effectiveTaints;
  /// Enabling Confidential Storage will create boot disk with confidential mode. It is disabled by default.
  final pulumi.Input<bool>? enableConfidentialStorage;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigEphemeralStorageConfig>? ephemeralStorageConfig;
  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>? ephemeralStorageLocalSsdConfig;
  /// Parameters for the NCCL Fast Socket feature. If unspecified, NCCL Fast Socket will not be enabled on the node pool.
  /// Node Pool must enable gvnic.
  /// GKE version 1.25.2-gke.1700 or later.
  /// Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigFastSocket>? fastSocket;
  /// Enables Flex Start provisioning model for the node pool.
  final pulumi.Input<bool>? flexStart;
  /// Parameters for the Google Container Filesystem (GCFS).
  /// If unspecified, GCFS will not be enabled on the node pool. When enabling this feature you must specify `image_type = "COS_CONTAINERD"` and `node_version` from GKE versions 1.19 or later to use it.
  /// For GKE versions 1.19, 1.20, and 1.21, the recommended minimum `node_version` would be 1.19.15-gke.1300, 1.20.11-gke.1300, and 1.21.5-gke.1300 respectively.
  /// A `machine_type` that has more than 16 GiB of memory is also recommended.
  /// GCFS must be enabled in order to use [image streaming](https://cloud.google.com/kubernetes-engine/docs/how-to/image-streaming).
  /// Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigGcfsConfig>? gcfsConfig;
  /// List of the type and count of accelerator cards attached to the instance.
  /// Structure documented below.
  final pulumi.Input<List<ClusterNodePoolNodeConfigGuestAccelerator>>? guestAccelerators;
  /// Google Virtual NIC (gVNIC) is a virtual network interface.
  /// Installing the gVNIC driver allows for more efficient traffic transmission across the Google network infrastructure.
  /// gVNIC is an alternative to the virtIO-based ethernet driver. GKE nodes must use a Container-Optimized OS node image.
  /// GKE node version 1.15.11-gke.15 or later
  /// Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigGvnic>? gvnic;
  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final pulumi.Input<ClusterNodePoolNodeConfigHostMaintenancePolicy>? hostMaintenancePolicy;
  /// The image type to use for this node. Note that changing the image type
  /// will delete and recreate all nodes in the node pool.
  final pulumi.Input<String>? imageType;
  /// Kubelet configuration, currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Structure is documented below.
  ///
  /// ```
  /// kubelet_config {
  /// cpu_manager_policy   = "static"
  /// cpu_cfs_quota        = true
  /// cpu_cfs_quota_period = "100us"
  /// pod_pids_limit       = 1024
  /// }
  /// ```
  final pulumi.Input<ClusterNodePoolNodeConfigKubeletConfig>? kubeletConfig;
  /// The Kubernetes labels (key/value pairs) to be applied to each node. The kubernetes.io/ and k8s.io/ prefixes are
  /// reserved by Kubernetes Core components and cannot be specified.
  final pulumi.Input<Map<String, String>>? labels;
  /// Parameters that can be configured on Linux nodes. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigLinuxNodeConfig>? linuxNodeConfig;
  /// Parameters for the local NVMe SSDs. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>? localNvmeSsdBlockConfig;
  /// The amount of local SSD disks that will be
  /// attached to each cluster node. Defaults to 0.
  final pulumi.Input<int>? localSsdCount;
  /// Possible Local SSD encryption modes:
  /// Accepted values are:
  /// * `STANDARD_ENCRYPTION`: The given node will be encrypted using keys managed by Google infrastructure and the keys wll be deleted when the node is deleted.
  /// * `EPHEMERAL_KEY_ENCRYPTION`: The given node will opt-in for using ephemeral key for encrypting Local SSDs. The Local SSDs will not be able to recover data in case of node crash.
  final pulumi.Input<String>? localSsdEncryptionMode;
  /// Parameter for specifying the type of logging agent used in a node pool. This will override any cluster-wide default value. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  final pulumi.Input<String>? loggingVariant;
  /// The name of a Google Compute Engine machine type.
  /// Defaults to `e2-medium`. To create a custom machine type, value should be set as specified
  /// [here](https://cloud.google.com/compute/docs/reference/latest/instances#machineType).
  final pulumi.Input<String>? machineType;
  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final pulumi.Input<String>? maxRunDuration;
  /// The metadata key/value pairs assigned to instances in
  /// the cluster. From GKE `1.12` onwards, `disable-legacy-endpoints` is set to
  /// `true` by the API; if `metadata` is set but that default value is not
  /// included, the provider will attempt to unset the value. To avoid this, set the
  /// value in your config.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Minimum CPU platform to be used by this instance.
  /// The instance may be scheduled on the specified or newer CPU platform. Applicable
  /// values are the friendly names of CPU platforms, such as `Intel Haswell`. See the
  /// [official documentation](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for more information.
  final pulumi.Input<String>? minCpuPlatform;
  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final pulumi.Input<String>? nodeGroup;
  /// The set of Google API scopes to be made available
  /// on all of the node VMs under the "default" service account.
  /// Use the "https://www.googleapis.com/auth/cloud-platform" scope to grant access to all APIs. It is recommended that you set `service_account` to a non-default service account and grant IAM roles to that service account for only the resources that it needs.
  ///
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/access-scopes) for information on migrating off of legacy access scopes.
  final pulumi.Input<List<String>>? oauthScopes;
  /// A boolean that represents whether or not the underlying node VMs
  /// are preemptible. See the [official documentation](https://cloud.google.com/container-engine/docs/preemptible-vm)
  /// for more information. Defaults to false.
  final pulumi.Input<bool>? preemptible;
  /// The configuration of the desired reservation which instances could take capacity from. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigReservationAffinity>? reservationAffinity;
  /// The GCP labels (key/value pairs) to be applied to each node. Refer [here](https://cloud.google.com/kubernetes-engine/docs/how-to/creating-managing-labels)
  /// for how these labels are applied to clusters, node pools and nodes.
  final pulumi.Input<Map<String, String>>? resourceLabels;
  /// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// Sandbox configuration for this node.
  final pulumi.Input<ClusterNodePoolNodeConfigSandboxConfig>? sandboxConfig;
  /// Parameters for secondary boot disks to preload container images and data on new nodes. Structure is documented below. `gcfs_config` must be `enabled=true` for this feature to work. `min_master_version` must also be set to use GKE 1.28.3-gke.106700 or later versions.
  final pulumi.Input<List<ClusterNodePoolNodeConfigSecondaryBootDisk>>? secondaryBootDisks;
  /// The service account to be used by the Node VMs.
  /// If not specified, the "default" service account is used.
  final pulumi.Input<String>? serviceAccount;
  /// Shielded Instance options. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Allows specifying multiple [node affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity) useful for running workloads on [sole tenant nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/sole-tenancy). Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigSoleTenantConfig>? soleTenantConfig;
  /// A boolean that represents whether the underlying node VMs are spot.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/spot-vms)
  /// for more information. Defaults to false.
  final pulumi.Input<bool>? spot;
  /// The list of Storage Pools where boot disks are provisioned.
  final pulumi.Input<List<String>>? storagePools;
  /// The list of instance tags applied to all nodes. Tags are used to identify
  /// valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;
  /// A list of [Kubernetes taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/)
  /// to apply to nodes. GKE's API can only set this field on cluster creation.
  /// However, GKE will add taints to your nodes if you enable certain features such
  /// as GPUs. If this field is set, any diffs on this field will cause the provider to
  /// recreate the underlying resource. Taint values can be updated safely in
  /// Kubernetes (eg. through `kubectl`), and it's recommended that you do not use
  /// this field to manage taints. If you do, `lifecycle.ignore_changes` is
  /// recommended. Structure is documented below.
  final pulumi.Input<List<ClusterNodePoolNodeConfigTaint>>? taints;
  /// Windows node configuration, currently supporting OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of [OS_VERSION_UNSPECIFIED, OS_VERSION_LTSC2019, OS_VERSION_LTSC2022]. For example:
  final pulumi.Input<ClusterNodePoolNodeConfigWindowsNodeConfig>? windowsNodeConfig;
  /// Metadata configuration to expose to workloads on the node pool.
  /// Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigWorkloadMetadataConfig>? workloadMetadataConfig;

  /// Creates a new [ClusterNodePoolNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling
  /// [bootDisk] Configuration of the node pool boot disk. Structure is documented below
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: &lt;https://cloud.google.com/compute/docs/disks/customer-managed-encryption&gt;
  /// [confidentialNodes] Configuration for Confidential Nodes feature. Structure is documented below.
  /// [containerdConfig] Parameters to customize containerd runtime. Structure is documented below.
  /// [diskSizeGb] Size of the disk attached to each node, specified
  /// [diskType] Type of the disk attached to each node
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] Enabling Confidential Storage will create boot disk with confidential mode. It is disabled by default.
  /// [ephemeralStorageConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  /// [ephemeralStorageLocalSsdConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  /// [fastSocket] Parameters for the NCCL Fast Socket feature. If unspecified, NCCL Fast Socket will not be enabled on the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool.
  /// [gcfsConfig] Parameters for the Google Container Filesystem (GCFS).
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnic] Google Virtual NIC (gVNIC) is a virtual network interface.
  /// [hostMaintenancePolicy] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that changing the image type
  /// [kubeletConfig] Kubelet configuration, currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// [labels] The Kubernetes labels (key/value pairs) to be applied to each node. The kubernetes.io/ and k8s.io/ prefixes are
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes. Structure is documented below.
  /// [localNvmeSsdBlockConfig] Parameters for the local NVMe SSDs. Structure is documented below.
  /// [localSsdCount] The amount of local SSD disks that will be
  /// [localSsdEncryptionMode] Possible Local SSD encryption modes:
  /// [loggingVariant] Parameter for specifying the type of logging agent used in a node pool. This will override any cluster-wide default value. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  /// [machineType] The name of a Google Compute Engine machine type.
  /// [maxRunDuration] The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  /// [metadata] The metadata key/value pairs assigned to instances in
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance.
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  /// [oauthScopes] The set of Google API scopes to be made available
  /// [preemptible] A boolean that represents whether or not the underlying node VMs
  /// [reservationAffinity] The configuration of the desired reservation which instances could take capacity from. Structure is documented below.
  /// [resourceLabels] The GCP labels (key/value pairs) to be applied to each node. Refer [here](https://cloud.google.com/kubernetes-engine/docs/how-to/creating-managing-labels)
  /// [resourceManagerTags] A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [secondaryBootDisks] Parameters for secondary boot disks to preload container images and data on new nodes. Structure is documented below. `gcfs_config` must be `enabled=true` for this feature to work. `min_master_version` must also be set to use GKE 1.28.3-gke.106700 or later versions.
  /// [serviceAccount] The service account to be used by the Node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options. Structure is documented below.
  /// [soleTenantConfig] Allows specifying multiple [node affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity) useful for running workloads on [sole tenant nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/sole-tenancy). Structure is documented below.
  /// [spot] A boolean that represents whether the underlying node VMs are spot.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes. Tags are used to identify
  /// [taints] A list of [Kubernetes taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/)
  /// [windowsNodeConfig] Windows node configuration, currently supporting OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of [OS_VERSION_UNSPECIFIED, OS_VERSION_LTSC2019, OS_VERSION_LTSC2022]. For example:
  /// [workloadMetadataConfig] Metadata configuration to expose to workloads on the node pool.
  const ClusterNodePoolNodeConfig({
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
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigConfidentialNodes, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'containerdConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigContainerdConfig, Map<String, dynamic>>(containerdConfig, (value) => value.toMap()),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'effectiveTaints': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigEffectiveTaint>, List<Map<String, dynamic>>>(effectiveTaints, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigEffectiveTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableConfidentialStorage': ?enableConfidentialStorage,
      'ephemeralStorageConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigEphemeralStorageConfig, Map<String, dynamic>>(ephemeralStorageConfig, (value) => value.toMap()),
      'ephemeralStorageLocalSsdConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig, Map<String, dynamic>>(ephemeralStorageLocalSsdConfig, (value) => value.toMap()),
      'fastSocket': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigFastSocket, Map<String, dynamic>>(fastSocket, (value) => value.toMap()),
      'flexStart': ?flexStart,
      'gcfsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigGcfsConfig, Map<String, dynamic>>(gcfsConfig, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gvnic': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigGvnic, Map<String, dynamic>>(gvnic, (value) => value.toMap()),
      'hostMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigHostMaintenancePolicy, Map<String, dynamic>>(hostMaintenancePolicy, (value) => value.toMap()),
      'imageType': ?imageType,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'labels': ?labels,
      'linuxNodeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigLinuxNodeConfig, Map<String, dynamic>>(linuxNodeConfig, (value) => value.toMap()),
      'localNvmeSsdBlockConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig, Map<String, dynamic>>(localNvmeSsdBlockConfig, (value) => value.toMap()),
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
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceLabels': ?resourceLabels,
      'resourceManagerTags': ?resourceManagerTags,
      'sandboxConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigSandboxConfig, Map<String, dynamic>>(sandboxConfig, (value) => value.toMap()),
      'secondaryBootDisks': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigSecondaryBootDisk>, List<Map<String, dynamic>>>(secondaryBootDisks, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigSecondaryBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'soleTenantConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigSoleTenantConfig, Map<String, dynamic>>(soleTenantConfig, (value) => value.toMap()),
      'spot': ?spot,
      'storagePools': ?storagePools,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsNodeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigWindowsNodeConfig, Map<String, dynamic>>(windowsNodeConfig, (value) => value.toMap()),
      'workloadMetadataConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(workloadMetadataConfig, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfig(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiskKmsKey: (() { final guardedValue = map['bootDiskKmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidentialNodes: (() { final guardedValue = map['confidentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigConfidentialNodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerdConfig: (() { final guardedValue = map['containerdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigContainerdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveTaints: (() { final guardedValue = map['effectiveTaints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigEffectiveTaint>(guardedValue, (value) => ClusterNodePoolNodeConfigEffectiveTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableConfidentialStorage: (() { final guardedValue = map['enableConfidentialStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralStorageConfig: (() { final guardedValue = map['ephemeralStorageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigEphemeralStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralStorageLocalSsdConfig: (() { final guardedValue = map['ephemeralStorageLocalSsdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fastSocket: (() { final guardedValue = map['fastSocket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigFastSocket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flexStart: (() { final guardedValue = map['flexStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcfsConfig: (() { final guardedValue = map['gcfsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigGcfsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigGuestAccelerator>(guardedValue, (value) => ClusterNodePoolNodeConfigGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gvnic: (() { final guardedValue = map['gvnic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigGvnic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostMaintenancePolicy: (() { final guardedValue = map['hostMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      linuxNodeConfig: (() { final guardedValue = map['linuxNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigLinuxNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localNvmeSsdBlockConfig: (() { final guardedValue = map['localNvmeSsdBlockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSsdCount: (() { final guardedValue = map['localSsdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localSsdEncryptionMode: (() { final guardedValue = map['localSsdEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingVariant: (() { final guardedValue = map['loggingVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroup: (() { final guardedValue = map['nodeGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceLabels: (() { final guardedValue = map['resourceLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sandboxConfig: (() { final guardedValue = map['sandboxConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigSandboxConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryBootDisks: (() { final guardedValue = map['secondaryBootDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigSecondaryBootDisk>(guardedValue, (value) => ClusterNodePoolNodeConfigSecondaryBootDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      soleTenantConfig: (() { final guardedValue = map['soleTenantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigSoleTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storagePools: (() { final guardedValue = map['storagePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigTaint>(guardedValue, (value) => ClusterNodePoolNodeConfigTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsNodeConfig: (() { final guardedValue = map['windowsNodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigWindowsNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadMetadataConfig: (() { final guardedValue = map['workloadMetadataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

