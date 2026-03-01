// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_kubelet_config.dart';
import 'kubernetes_cluster_node_pool_linux_os_config.dart';
import 'kubernetes_cluster_node_pool_node_network_profile.dart';
import 'kubernetes_cluster_node_pool_upgrade_settings.dart';
import 'kubernetes_cluster_node_pool_windows_profile.dart';

/// {@template pulumi_containerservice_kubernetes_cluster_node_pool_kubernetes_cluster_node_pool_args_doc}
/// The set of arguments for KubernetesClusterNodePool.
/// {@endtemplate}
/// {@macro pulumi_containerservice_kubernetes_cluster_node_pool_kubernetes_cluster_node_pool_args_doc}
class KubernetesClusterNodePoolArgs {
  /// Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).
  final pulumi.Input<bool>? autoScalingEnabled;
  /// Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** An Eviction Policy can only be configured when `priority` is set to `Spot` and will default to `Delete` unless otherwise specified.
  final pulumi.Input<String>? evictionPolicy;
  /// Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// > **Note:** FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview).
  final pulumi.Input<bool>? fipsEnabled;
  /// Specifies whether to install the GPU Driver for the nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuDriver;
  /// Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuInstance;
  /// Should the nodes in this Node Pool have host encryption enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// > **NOTE:** Additional fields must be configured depending on the value of this field - see below.
  final pulumi.Input<bool>? hostEncryptionEnabled;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostGroupId;
  /// A `kubelet_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<KubernetesClusterNodePoolKubeletConfig>? kubeletConfig;
  /// The type of disk used by kubelet. Possible values are `OS` and `Temporary`. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<String>? kubeletDiskType;
  /// The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The type of Default Node Pool for the Kubernetes Cluster must be `VirtualMachineScaleSets` to attach multiple node pools.
  final pulumi.Input<String> kubernetesClusterId;
  /// A `linux_os_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<KubernetesClusterNodePoolLinuxOsConfig>? linuxOsConfig;
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on each agent. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<int>? maxPods;
  final pulumi.Input<int>? minCount;
  /// Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.
  final pulumi.Input<String>? mode;
  /// The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** A Windows Node Pool cannot have a `name` longer than 6 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? nodeCount;
  /// A map of Kubernetes labels which should be applied to nodes in this Node Pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// A `node_network_profile` block as documented below.
  final pulumi.Input<KubernetesClusterNodePoolNodeNetworkProfile>? nodeNetworkProfile;
  /// Should each node have a Public IP Address? Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nodePublicIpPrefixId;
  /// A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`).
  final pulumi.Input<List<String>>? nodeTaints;
  /// Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// > **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.
  final pulumi.Input<String>? orchestratorVersion;
  /// The Agent Operating System disk size in GB. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<int>? osDiskSizeGb;
  /// The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<String>? osDiskType;
  /// Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; any other change forces a new resource to be created.
  ///
  /// > **Note:** `Windows2019` is deprecated and not supported for Kubernetes version ≥1.33.
  final pulumi.Input<String>? osSku;
  /// The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.
  final pulumi.Input<String>? osType;
  /// The ID of the Subnet where the pods in the Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<String>? podSubnetId;
  /// The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When setting `priority` to Spot - you must configure an `eviction_policy`, `spot_max_price` and add the applicable `node_labels` and `node_taints` [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool).
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  final pulumi.Input<String>? scaleDownMode;
  /// The ID of the Snapshot which should be used to create this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<String>? snapshotId;
  /// The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This field can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? spotMaxPrice;
  /// A mapping of tags to assign to the resource.
  ///
  /// > At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you may wish to use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) functionality to ignore changes to the casing until this is fixed in the AKS API.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the name of the temporary node pool used to cycle the node pool when one of the relevant properties are updated.
  final pulumi.Input<String>? temporaryNameForRotation;
  /// Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<bool>? ultraSsdEnabled;
  /// A `upgrade_settings` block as documented below.
  final pulumi.Input<KubernetesClusterNodePoolUpgradeSettings>? upgradeSettings;
  /// The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<String>? vmSize;
  /// The ID of the Subnet where this Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// > **NOTE:** A route table must be configured on this Subnet.
  final pulumi.Input<String>? vnetSubnetId;
  /// A `windows_profile` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<KubernetesClusterNodePoolWindowsProfile>? windowsProfile;
  /// Used to specify the workload runtime. Allowed values are `OCIContainer` and `WasmWasi`.
  ///
  /// > **Note:** WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools)
  final pulumi.Input<String>? workloadRuntime;
  /// Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this property requires specifying `temporary_name_for_rotation`.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [KubernetesClusterNodePoolArgs].
  /// [autoScalingEnabled] Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.
  /// [evictionPolicy] The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [fipsEnabled] Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  /// [gpuDriver] Specifies whether to install the GPU Driver for the nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  /// [gpuInstance] Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  /// [hostEncryptionEnabled] Should the nodes in this Node Pool have host encryption enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  /// [hostGroupId] The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.
  /// [kubeletConfig] A `kubelet_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  /// [kubeletDiskType] The type of disk used by kubelet. Possible values are `OS` and `Temporary`. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created.
  /// [linuxOsConfig] A `linux_os_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  /// [maxCount] Optional.
  /// [maxPods] The maximum number of pods that can run on each agent. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [minCount] Optional.
  /// [mode] Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.
  /// [name] The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [nodeCount] Optional.
  /// [nodeLabels] A map of Kubernetes labels which should be applied to nodes in this Node Pool.
  /// [nodeNetworkProfile] A `node_network_profile` block as documented below.
  /// [nodePublicIpEnabled] Should each node have a Public IP Address? Changing this property requires specifying `temporary_name_for_rotation`.
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  /// [nodeTaints] A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`).
  /// [orchestratorVersion] Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  /// [osDiskSizeGb] The Agent Operating System disk size in GB. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [osDiskType] The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [osSku] Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; any other change forces a new resource to be created.
  /// [osType] The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.
  /// [podSubnetId] The ID of the Subnet where the pods in the Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [priority] The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created.
  /// [scaleDownMode] Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  /// [snapshotId] The ID of the Snapshot which should be used to create this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [spotMaxPrice] The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [temporaryNameForRotation] Specifies the name of the temporary node pool used to cycle the node pool when one of the relevant properties are updated.
  /// [ultraSsdEnabled] Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [upgradeSettings] A `upgrade_settings` block as documented below.
  /// [vmSize] The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [vnetSubnetId] The ID of the Subnet where this Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  /// [windowsProfile] A `windows_profile` block as documented below. Changing this forces a new resource to be created.
  /// [workloadRuntime] Used to specify the workload runtime. Allowed values are `OCIContainer` and `WasmWasi`.
  /// [zones] Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this property requires specifying `temporary_name_for_rotation`.
  KubernetesClusterNodePoolArgs({
    pulumi.Output<bool>? autoScalingEnabled,
    pulumi.Output<String>? capacityReservationGroupId,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<bool>? fipsEnabled,
    pulumi.Output<String>? gpuDriver,
    pulumi.Output<String>? gpuInstance,
    pulumi.Output<bool>? hostEncryptionEnabled,
    pulumi.Output<String>? hostGroupId,
    pulumi.Output<KubernetesClusterNodePoolKubeletConfig>? kubeletConfig,
    pulumi.Output<String>? kubeletDiskType,
    required pulumi.Output<String> kubernetesClusterId,
    pulumi.Output<KubernetesClusterNodePoolLinuxOsConfig>? linuxOsConfig,
    pulumi.Output<int>? maxCount,
    pulumi.Output<int>? maxPods,
    pulumi.Output<int>? minCount,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<Map<String, String>>? nodeLabels,
    pulumi.Output<KubernetesClusterNodePoolNodeNetworkProfile>? nodeNetworkProfile,
    pulumi.Output<bool>? nodePublicIpEnabled,
    pulumi.Output<String>? nodePublicIpPrefixId,
    pulumi.Output<List<String>>? nodeTaints,
    pulumi.Output<String>? orchestratorVersion,
    pulumi.Output<int>? osDiskSizeGb,
    pulumi.Output<String>? osDiskType,
    pulumi.Output<String>? osSku,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? podSubnetId,
    pulumi.Output<String>? priority,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<String>? scaleDownMode,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<double>? spotMaxPrice,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? temporaryNameForRotation,
    pulumi.Output<bool>? ultraSsdEnabled,
    pulumi.Output<KubernetesClusterNodePoolUpgradeSettings>? upgradeSettings,
    pulumi.Output<String>? vmSize,
    pulumi.Output<String>? vnetSubnetId,
    pulumi.Output<KubernetesClusterNodePoolWindowsProfile>? windowsProfile,
    pulumi.Output<String>? workloadRuntime,
    pulumi.Output<List<String>>? zones,
  }) :
      autoScalingEnabled = pulumi.Input.asOptionalInput<bool>(autoScalingEnabled),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      fipsEnabled = pulumi.Input.asOptionalInput<bool>(fipsEnabled),
      gpuDriver = pulumi.Input.asOptionalInput<String>(gpuDriver),
      gpuInstance = pulumi.Input.asOptionalInput<String>(gpuInstance),
      hostEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(hostEncryptionEnabled),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      kubeletConfig = pulumi.Input.asOptionalInput<KubernetesClusterNodePoolKubeletConfig>(kubeletConfig),
      kubeletDiskType = pulumi.Input.asOptionalInput<String>(kubeletDiskType),
      kubernetesClusterId = pulumi.Input.asInput<String>(kubernetesClusterId),
      linuxOsConfig = pulumi.Input.asOptionalInput<KubernetesClusterNodePoolLinuxOsConfig>(linuxOsConfig),
      maxCount = pulumi.Input.asOptionalInput<int>(maxCount),
      maxPods = pulumi.Input.asOptionalInput<int>(maxPods),
      minCount = pulumi.Input.asOptionalInput<int>(minCount),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeLabels = pulumi.Input.asOptionalInput<Map<String, String>>(nodeLabels),
      nodeNetworkProfile = pulumi.Input.asOptionalInput<KubernetesClusterNodePoolNodeNetworkProfile>(nodeNetworkProfile),
      nodePublicIpEnabled = pulumi.Input.asOptionalInput<bool>(nodePublicIpEnabled),
      nodePublicIpPrefixId = pulumi.Input.asOptionalInput<String>(nodePublicIpPrefixId),
      nodeTaints = pulumi.Input.asOptionalInput<List<String>>(nodeTaints),
      orchestratorVersion = pulumi.Input.asOptionalInput<String>(orchestratorVersion),
      osDiskSizeGb = pulumi.Input.asOptionalInput<int>(osDiskSizeGb),
      osDiskType = pulumi.Input.asOptionalInput<String>(osDiskType),
      osSku = pulumi.Input.asOptionalInput<String>(osSku),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      podSubnetId = pulumi.Input.asOptionalInput<String>(podSubnetId),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      scaleDownMode = pulumi.Input.asOptionalInput<String>(scaleDownMode),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      spotMaxPrice = pulumi.Input.asOptionalInput<double>(spotMaxPrice),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      temporaryNameForRotation = pulumi.Input.asOptionalInput<String>(temporaryNameForRotation),
      ultraSsdEnabled = pulumi.Input.asOptionalInput<bool>(ultraSsdEnabled),
      upgradeSettings = pulumi.Input.asOptionalInput<KubernetesClusterNodePoolUpgradeSettings>(upgradeSettings),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize),
      vnetSubnetId = pulumi.Input.asOptionalInput<String>(vnetSubnetId),
      windowsProfile = pulumi.Input.asOptionalInput<KubernetesClusterNodePoolWindowsProfile>(windowsProfile),
      workloadRuntime = pulumi.Input.asOptionalInput<String>(workloadRuntime),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': ?autoScalingEnabled,
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'evictionPolicy': ?evictionPolicy,
      'fipsEnabled': ?fipsEnabled,
      'gpuDriver': ?gpuDriver,
      'gpuInstance': ?gpuInstance,
      'hostEncryptionEnabled': ?hostEncryptionEnabled,
      'hostGroupId': ?hostGroupId,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'kubeletDiskType': ?kubeletDiskType,
      'kubernetesClusterId': kubernetesClusterId,
      'linuxOsConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolLinuxOsConfig, Map<String, dynamic>>(linuxOsConfig, (value) => value.toMap()),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeLabels': ?nodeLabels,
      'nodeNetworkProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolNodeNetworkProfile, Map<String, dynamic>>(nodeNetworkProfile, (value) => value.toMap()),
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'nodePublicIpPrefixId': ?nodePublicIpPrefixId,
      'nodeTaints': ?nodeTaints,
      'orchestratorVersion': ?orchestratorVersion,
      'osDiskSizeGb': ?osDiskSizeGb,
      'osDiskType': ?osDiskType,
      'osSku': ?osSku,
      'osType': ?osType,
      'podSubnetId': ?podSubnetId,
      'priority': ?priority,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'scaleDownMode': ?scaleDownMode,
      'snapshotId': ?snapshotId,
      'spotMaxPrice': ?spotMaxPrice,
      'tags': ?tags,
      'temporaryNameForRotation': ?temporaryNameForRotation,
      'ultraSsdEnabled': ?ultraSsdEnabled,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSize': ?vmSize,
      'vnetSubnetId': ?vnetSubnetId,
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolWindowsProfile, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
      'workloadRuntime': ?workloadRuntime,
      'zones': ?zones,
    };
  }

  factory KubernetesClusterNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolArgs(
      autoScalingEnabled: map['autoScalingEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoScalingEnabled'] as bool),
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupId'] as String),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      fipsEnabled: map['fipsEnabled'] == null ? null : pulumi.Output.create<bool>(map['fipsEnabled'] as bool),
      gpuDriver: map['gpuDriver'] == null ? null : pulumi.Output.create<String>(map['gpuDriver'] as String),
      gpuInstance: map['gpuInstance'] == null ? null : pulumi.Output.create<String>(map['gpuInstance'] as String),
      hostEncryptionEnabled: map['hostEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['hostEncryptionEnabled'] as bool),
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      kubeletConfig: map['kubeletConfig'] == null ? null : pulumi.Output.create<KubernetesClusterNodePoolKubeletConfig>(KubernetesClusterNodePoolKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())),
      kubeletDiskType: map['kubeletDiskType'] == null ? null : pulumi.Output.create<String>(map['kubeletDiskType'] as String),
      kubernetesClusterId: pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      linuxOsConfig: map['linuxOsConfig'] == null ? null : pulumi.Output.create<KubernetesClusterNodePoolLinuxOsConfig>(KubernetesClusterNodePoolLinuxOsConfig.fromMap((map['linuxOsConfig'] as Map).cast<String, dynamic>())),
      maxCount: map['maxCount'] == null ? null : pulumi.Output.create<int>(map['maxCount'] as int),
      maxPods: map['maxPods'] == null ? null : pulumi.Output.create<int>(map['maxPods'] as int),
      minCount: map['minCount'] == null ? null : pulumi.Output.create<int>(map['minCount'] as int),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeLabels: map['nodeLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['nodeLabels'] as Map).cast<String, String>()),
      nodeNetworkProfile: map['nodeNetworkProfile'] == null ? null : pulumi.Output.create<KubernetesClusterNodePoolNodeNetworkProfile>(KubernetesClusterNodePoolNodeNetworkProfile.fromMap((map['nodeNetworkProfile'] as Map).cast<String, dynamic>())),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['nodePublicIpEnabled'] as bool),
      nodePublicIpPrefixId: map['nodePublicIpPrefixId'] == null ? null : pulumi.Output.create<String>(map['nodePublicIpPrefixId'] as String),
      nodeTaints: map['nodeTaints'] == null ? null : pulumi.Output.create<List<String>>((map['nodeTaints'] as List).cast<String>()),
      orchestratorVersion: map['orchestratorVersion'] == null ? null : pulumi.Output.create<String>(map['orchestratorVersion'] as String),
      osDiskSizeGb: map['osDiskSizeGb'] == null ? null : pulumi.Output.create<int>(map['osDiskSizeGb'] as int),
      osDiskType: map['osDiskType'] == null ? null : pulumi.Output.create<String>(map['osDiskType'] as String),
      osSku: map['osSku'] == null ? null : pulumi.Output.create<String>(map['osSku'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      podSubnetId: map['podSubnetId'] == null ? null : pulumi.Output.create<String>(map['podSubnetId'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      scaleDownMode: map['scaleDownMode'] == null ? null : pulumi.Output.create<String>(map['scaleDownMode'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      spotMaxPrice: map['spotMaxPrice'] == null ? null : pulumi.Output.create<double>(map['spotMaxPrice'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      temporaryNameForRotation: map['temporaryNameForRotation'] == null ? null : pulumi.Output.create<String>(map['temporaryNameForRotation'] as String),
      ultraSsdEnabled: map['ultraSsdEnabled'] == null ? null : pulumi.Output.create<bool>(map['ultraSsdEnabled'] as bool),
      upgradeSettings: map['upgradeSettings'] == null ? null : pulumi.Output.create<KubernetesClusterNodePoolUpgradeSettings>(KubernetesClusterNodePoolUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
      vnetSubnetId: map['vnetSubnetId'] == null ? null : pulumi.Output.create<String>(map['vnetSubnetId'] as String),
      windowsProfile: map['windowsProfile'] == null ? null : pulumi.Output.create<KubernetesClusterNodePoolWindowsProfile>(KubernetesClusterNodePoolWindowsProfile.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>())),
      workloadRuntime: map['workloadRuntime'] == null ? null : pulumi.Output.create<String>(map['workloadRuntime'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

