// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_kubelet_config.dart';
import 'kubernetes_cluster_node_pool_linux_os_config.dart';
import 'kubernetes_cluster_node_pool_node_network_profile.dart';
import 'kubernetes_cluster_node_pool_upgrade_settings.dart';
import 'kubernetes_cluster_node_pool_windows_profile.dart';

/// Input properties used for looking up and filtering KubernetesClusterNodePool resources.
class KubernetesClusterNodePoolState {
  /// Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).
  final pulumi.Input<bool>? autoScalingEnabled;
  /// Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** An Eviction Policy can only be configured when `priority` is set to `Spot` and will default to `Delete` unless otherwise specified.
  final pulumi.Input<String>? evictionPolicy;
  /// Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this property requires specifying `temporaryNameForRotation`.
  ///
  /// &gt; **Note:** FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview).
  final pulumi.Input<bool>? fipsEnabled;
  /// Specifies whether to install the GPU Driver for the nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuDriver;
  /// Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuInstance;
  /// Should the nodes in this Node Pool have host encryption enabled? Changing this property requires specifying `temporaryNameForRotation`.
  ///
  /// &gt; **NOTE:** Additional fields must be configured depending on the value of this field - see below.
  final pulumi.Input<bool>? hostEncryptionEnabled;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostGroupId;
  /// A `kubeletConfig` block as defined below. Changing this requires specifying `temporaryNameForRotation`.
  final pulumi.Input<KubernetesClusterNodePoolKubeletConfig>? kubeletConfig;
  /// The type of disk used by kubelet. Possible values are `OS` and `Temporary`. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<String>? kubeletDiskType;
  /// The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The type of Default Node Pool for the Kubernetes Cluster must be `VirtualMachineScaleSets` to attach multiple node pools.
  final pulumi.Input<String>? kubernetesClusterId;
  /// A `linuxOsConfig` block as defined below. Changing this requires specifying `temporaryNameForRotation`.
  final pulumi.Input<KubernetesClusterNodePoolLinuxOsConfig>? linuxOsConfig;
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on each agent. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<int>? maxPods;
  final pulumi.Input<int>? minCount;
  /// Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.
  final pulumi.Input<String>? mode;
  /// The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** A Windows Node Pool cannot have a `name` longer than 6 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? nodeCount;
  /// The current node image version running on this Node Pool.
  final pulumi.Input<String>? nodeImageVersion;
  /// A map of Kubernetes labels which should be applied to nodes in this Node Pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// A `nodeNetworkProfile` block as documented below.
  final pulumi.Input<KubernetesClusterNodePoolNodeNetworkProfile>? nodeNetworkProfile;
  /// Should each node have a Public IP Address? Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `nodePublicIpEnabled` should be `true`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nodePublicIpPrefixId;
  /// A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`).
  final pulumi.Input<List<String>>? nodeTaints;
  /// Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// &gt; **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.
  final pulumi.Input<String>? orchestratorVersion;
  /// The Agent Operating System disk size in GB. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<int>? osDiskSizeGb;
  /// The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<String>? osDiskType;
  /// Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Ubuntu2404`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; any other change forces a new resource to be created.
  ///
  /// &gt; **Note:** `Windows2019` is deprecated and not supported for Kubernetes version ≥1.33.
  final pulumi.Input<String>? osSku;
  /// The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.
  final pulumi.Input<String>? osType;
  /// The ID of the Subnet where the pods in the Node Pool should exist. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<String>? podSubnetId;
  /// The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When setting `priority` to Spot - you must configure an `evictionPolicy`, `spotMaxPrice` and add the applicable `nodeLabels` and `nodeTaints` [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool).
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  final pulumi.Input<String>? scaleDownMode;
  /// The ID of the Snapshot which should be used to create this Node Pool. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<String>? snapshotId;
  /// The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This field can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? spotMaxPrice;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you may wish to use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) functionality to ignore changes to the casing until this is fixed in the AKS API.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the name of the temporary node pool used to cycle the node pool when one of the relevant properties are updated.
  final pulumi.Input<String>? temporaryNameForRotation;
  /// Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<bool>? ultraSsdEnabled;
  /// A `upgradeSettings` block as documented below.
  final pulumi.Input<KubernetesClusterNodePoolUpgradeSettings>? upgradeSettings;
  /// The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<String>? vmSize;
  /// The ID of the Subnet where this Node Pool should exist. Changing this property requires specifying `temporaryNameForRotation`.
  ///
  /// &gt; **NOTE:** A route table must be configured on this Subnet.
  final pulumi.Input<String>? vnetSubnetId;
  /// A `windowsProfile` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<KubernetesClusterNodePoolWindowsProfile>? windowsProfile;
  /// Used to specify the workload runtime. Allowed values are `KataVmIsolation`, `OCIContainer` and `WasmWasi`.
  ///
  /// &gt; **Note:** `KataVmIsolation` requires `osSku` to be set to `AzureLinux` and the selected VM size must support nested virtualization.
  ///
  /// &gt; **Note:** WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools)
  final pulumi.Input<String>? workloadRuntime;
  /// Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this property requires specifying `temporaryNameForRotation`.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [KubernetesClusterNodePoolState].
  /// [autoScalingEnabled] Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.
  /// [evictionPolicy] The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [fipsEnabled] Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this property requires specifying `temporaryNameForRotation`.
  /// [gpuDriver] Specifies whether to install the GPU Driver for the nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  /// [gpuInstance] Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  /// [hostEncryptionEnabled] Should the nodes in this Node Pool have host encryption enabled? Changing this property requires specifying `temporaryNameForRotation`.
  /// [hostGroupId] The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.
  /// [kubeletConfig] A `kubeletConfig` block as defined below. Changing this requires specifying `temporaryNameForRotation`.
  /// [kubeletDiskType] The type of disk used by kubelet. Possible values are `OS` and `Temporary`. Changing this property requires specifying `temporaryNameForRotation`.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created.
  /// [linuxOsConfig] A `linuxOsConfig` block as defined below. Changing this requires specifying `temporaryNameForRotation`.
  /// [maxCount] Optional.
  /// [maxPods] The maximum number of pods that can run on each agent. Changing this property requires specifying `temporaryNameForRotation`.
  /// [minCount] Optional.
  /// [mode] Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.
  /// [name] The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [nodeCount] Optional.
  /// [nodeImageVersion] The current node image version running on this Node Pool.
  /// [nodeLabels] A map of Kubernetes labels which should be applied to nodes in this Node Pool.
  /// [nodeNetworkProfile] A `nodeNetworkProfile` block as documented below.
  /// [nodePublicIpEnabled] Should each node have a Public IP Address? Changing this property requires specifying `temporaryNameForRotation`.
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `nodePublicIpEnabled` should be `true`. Changing this forces a new resource to be created.
  /// [nodeTaints] A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`).
  /// [orchestratorVersion] Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  /// [osDiskSizeGb] The Agent Operating System disk size in GB. Changing this property requires specifying `temporaryNameForRotation`.
  /// [osDiskType] The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this property requires specifying `temporaryNameForRotation`.
  /// [osSku] Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Ubuntu2404`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; any other change forces a new resource to be created.
  /// [osType] The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.
  /// [podSubnetId] The ID of the Subnet where the pods in the Node Pool should exist. Changing this property requires specifying `temporaryNameForRotation`.
  /// [priority] The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created.
  /// [scaleDownMode] Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  /// [snapshotId] The ID of the Snapshot which should be used to create this Node Pool. Changing this property requires specifying `temporaryNameForRotation`.
  /// [spotMaxPrice] The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [temporaryNameForRotation] Specifies the name of the temporary node pool used to cycle the node pool when one of the relevant properties are updated.
  /// [ultraSsdEnabled] Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this property requires specifying `temporaryNameForRotation`.
  /// [upgradeSettings] A `upgradeSettings` block as documented below.
  /// [vmSize] The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this property requires specifying `temporaryNameForRotation`.
  /// [vnetSubnetId] The ID of the Subnet where this Node Pool should exist. Changing this property requires specifying `temporaryNameForRotation`.
  /// [windowsProfile] A `windowsProfile` block as documented below. Changing this forces a new resource to be created.
  /// [workloadRuntime] Used to specify the workload runtime. Allowed values are `KataVmIsolation`, `OCIContainer` and `WasmWasi`.
  /// [zones] Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this property requires specifying `temporaryNameForRotation`.
  const KubernetesClusterNodePoolState({
    this.autoScalingEnabled,
    this.capacityReservationGroupId,
    this.evictionPolicy,
    this.fipsEnabled,
    this.gpuDriver,
    this.gpuInstance,
    this.hostEncryptionEnabled,
    this.hostGroupId,
    this.kubeletConfig,
    this.kubeletDiskType,
    this.kubernetesClusterId,
    this.linuxOsConfig,
    this.maxCount,
    this.maxPods,
    this.minCount,
    this.mode,
    this.name,
    this.nodeCount,
    this.nodeImageVersion,
    this.nodeLabels,
    this.nodeNetworkProfile,
    this.nodePublicIpEnabled,
    this.nodePublicIpPrefixId,
    this.nodeTaints,
    this.orchestratorVersion,
    this.osDiskSizeGb,
    this.osDiskType,
    this.osSku,
    this.osType,
    this.podSubnetId,
    this.priority,
    this.proximityPlacementGroupId,
    this.scaleDownMode,
    this.snapshotId,
    this.spotMaxPrice,
    this.tags,
    this.temporaryNameForRotation,
    this.ultraSsdEnabled,
    this.upgradeSettings,
    this.vmSize,
    this.vnetSubnetId,
    this.windowsProfile,
    this.workloadRuntime,
    this.zones,
  });

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
      'kubernetesClusterId': ?kubernetesClusterId,
      'linuxOsConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePoolLinuxOsConfig, Map<String, dynamic>>(linuxOsConfig, (value) => value.toMap()),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeImageVersion': ?nodeImageVersion,
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

  factory KubernetesClusterNodePoolState.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolState(
      autoScalingEnabled: (() { final guardedValue = map['autoScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacityReservationGroupId: (() { final guardedValue = map['capacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpuDriver: (() { final guardedValue = map['gpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuInstance: (() { final guardedValue = map['gpuInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostEncryptionEnabled: (() { final guardedValue = map['hostEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostGroupId: (() { final guardedValue = map['hostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeletDiskType: (() { final guardedValue = map['kubeletDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesClusterId: (() { final guardedValue = map['kubernetesClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxOsConfig: (() { final guardedValue = map['linuxOsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolLinuxOsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeImageVersion: (() { final guardedValue = map['nodeImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeNetworkProfile: (() { final guardedValue = map['nodeNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolNodeNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePublicIpEnabled: (() { final guardedValue = map['nodePublicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodePublicIpPrefixId: (() { final guardedValue = map['nodePublicIpPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTaints: (() { final guardedValue = map['nodeTaints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orchestratorVersion: (() { final guardedValue = map['orchestratorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskSizeGb: (() { final guardedValue = map['osDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      osDiskType: (() { final guardedValue = map['osDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osSku: (() { final guardedValue = map['osSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podSubnetId: (() { final guardedValue = map['podSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownMode: (() { final guardedValue = map['scaleDownMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotMaxPrice: (() { final guardedValue = map['spotMaxPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      temporaryNameForRotation: (() { final guardedValue = map['temporaryNameForRotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ultraSsdEnabled: (() { final guardedValue = map['ultraSsdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetSubnetId: (() { final guardedValue = map['vnetSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNodePoolWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadRuntime: (() { final guardedValue = map['workloadRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
