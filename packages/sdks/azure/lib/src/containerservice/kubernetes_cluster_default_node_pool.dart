// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_default_node_pool_kubelet_config.dart';
import 'kubernetes_cluster_default_node_pool_linux_os_config.dart';
import 'kubernetes_cluster_default_node_pool_node_network_profile.dart';
import 'kubernetes_cluster_default_node_pool_upgrade_settings.dart';

class KubernetesClusterDefaultNodePool {
  /// Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool?
  ///
  /// &gt; **Note:** This requires that the `type` is set to `VirtualMachineScaleSets`.
  ///
  /// &gt; **Note:** If you're using AutoScaling, you may wish to use [`ignoreChanges` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to the `node_count` field.
  final pulumi.Input<bool>? autoScalingEnabled;
  /// Specifies the ID of the Capacity Reservation Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// Should the nodes in this Node Pool have Federal Information Processing Standard enabled? `temporary_name_for_rotation` must be specified when changing this block.
  final pulumi.Input<bool>? fipsEnabled;
  /// Specifies the driver type for GPU nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuDriver;
  /// Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gpuInstance;
  /// Should the nodes in the Default Node Pool have host encryption enabled? `temporary_name_for_rotation` must be specified when changing this property.
  ///
  /// &gt; **Note:** This requires that the Feature `Microsoft.Compute/EncryptionAtHost` is enabled and the Resource Provider is registered.
  final pulumi.Input<bool>? hostEncryptionEnabled;
  /// Specifies the ID of the Host Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostGroupId;
  /// A `kubelet_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  final pulumi.Input<KubernetesClusterDefaultNodePoolKubeletConfig>? kubeletConfig;
  /// The type of disk used by kubelet. Possible values are `OS` and `Temporary`. `temporary_name_for_rotation` must be specified when changing this block.
  final pulumi.Input<String>? kubeletDiskType;
  /// A `linux_os_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  final pulumi.Input<KubernetesClusterDefaultNodePoolLinuxOsConfig>? linuxOsConfig;
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on each agent. `temporary_name_for_rotation` must be specified when changing this property.
  final pulumi.Input<int>? maxPods;
  final pulumi.Input<int>? minCount;
  /// The name which should be used for the default Kubernetes Node Pool.
  final pulumi.Input<String> name;
  final pulumi.Input<int>? nodeCount;
  /// A map of Kubernetes labels which should be applied to nodes in the Default Node Pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// A `node_network_profile` block as documented below.
  final pulumi.Input<KubernetesClusterDefaultNodePoolNodeNetworkProfile>? nodeNetworkProfile;
  /// Should nodes in this Node Pool have a Public IP Address? `temporary_name_for_rotation` must be specified when changing this property.
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nodePublicIpPrefixId;
  /// Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. `temporary_name_for_rotation` must be specified when changing this property.
  final pulumi.Input<bool>? onlyCriticalAddonsEnabled;
  /// Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by `kubernetes_version`. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// &gt; **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.
  final pulumi.Input<String>? orchestratorVersion;
  /// The size of the OS Disk which should be used for each agent in the Node Pool. `temporary_name_for_rotation` must be specified when attempting a change.
  final pulumi.Input<int>? osDiskSizeGb;
  /// The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. `temporary_name_for_rotation` must be specified when attempting a change.
  final pulumi.Input<String>? osDiskType;
  /// Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; otherwise `temporary_name_for_rotation` must be specified when attempting a change.
  ///
  /// &gt; **Note:** `Windows2019` is deprecated and not supported for Kubernetes version ≥1.33.
  final pulumi.Input<String>? osSku;
  /// The ID of the Subnet where the pods in the default Node Pool should exist.
  final pulumi.Input<String>? podSubnetId;
  /// The ID of the Proximity Placement Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  final pulumi.Input<String>? scaleDownMode;
  /// The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property.
  final pulumi.Input<String>? snapshotId;
  /// A mapping of tags to assign to the Node Pool.
  ///
  /// &gt; At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you may wish to use `ignore_changes` functionality to ignore changes to the casing until this is fixed in the AKS API.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing.
  final pulumi.Input<String>? temporaryNameForRotation;
  /// The type of Node Pool which should be created. Possible values are `VirtualMachineScaleSets`. Defaults to `VirtualMachineScaleSets`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When creating a cluster that supports multiple node pools, the cluster must use `VirtualMachineScaleSets`. For more information on the limitations of clusters using multiple node pools see [the documentation](https://learn.microsoft.com/en-us/azure/aks/use-multiple-node-pools#limitations).
  final pulumi.Input<String>? type;
  /// Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. `temporary_name_for_rotation` must be specified when attempting a change.
  final pulumi.Input<bool>? ultraSsdEnabled;
  /// A `upgrade_settings` block as documented below.
  final pulumi.Input<KubernetesClusterDefaultNodePoolUpgradeSettings>? upgradeSettings;
  /// The size of the Virtual Machine, such as `Standard_DS2_v2`. `temporary_name_for_rotation` must be specified when attempting a resize.
  final pulumi.Input<String>? vmSize;
  /// The ID of a Subnet where the Kubernetes Node Pool should exist.
  ///
  /// &gt; **Note:** A Route Table must be configured on this Subnet.
  final pulumi.Input<String>? vnetSubnetId;
  /// Specifies the workload runtime used by the node pool. Possible value is `OCIContainer`.
  final pulumi.Input<String>? workloadRuntime;
  /// Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. `temporary_name_for_rotation` must be specified when changing this property.
  ///
  /// &gt; **Note:** This requires that the `type` is set to `VirtualMachineScaleSets` and that `load_balancer_sku` is set to `standard`.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [KubernetesClusterDefaultNodePool].
  /// [autoScalingEnabled] Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool?
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  /// [fipsEnabled] Should the nodes in this Node Pool have Federal Information Processing Standard enabled? `temporary_name_for_rotation` must be specified when changing this block.
  /// [gpuDriver] Specifies the driver type for GPU nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  /// [gpuInstance] Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  /// [hostEncryptionEnabled] Should the nodes in the Default Node Pool have host encryption enabled? `temporary_name_for_rotation` must be specified when changing this property.
  /// [hostGroupId] Specifies the ID of the Host Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  /// [kubeletConfig] A `kubelet_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  /// [kubeletDiskType] The type of disk used by kubelet. Possible values are `OS` and `Temporary`. `temporary_name_for_rotation` must be specified when changing this block.
  /// [linuxOsConfig] A `linux_os_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  /// [maxCount] Optional.
  /// [maxPods] The maximum number of pods that can run on each agent. `temporary_name_for_rotation` must be specified when changing this property.
  /// [minCount] Optional.
  /// [name] The name which should be used for the default Kubernetes Node Pool.
  /// [nodeCount] Optional.
  /// [nodeLabels] A map of Kubernetes labels which should be applied to nodes in the Default Node Pool.
  /// [nodeNetworkProfile] A `node_network_profile` block as documented below.
  /// [nodePublicIpEnabled] Should nodes in this Node Pool have a Public IP Address? `temporary_name_for_rotation` must be specified when changing this property.
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  /// [onlyCriticalAddonsEnabled] Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. `temporary_name_for_rotation` must be specified when changing this property.
  /// [orchestratorVersion] Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by `kubernetes_version`. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  /// [osDiskSizeGb] The size of the OS Disk which should be used for each agent in the Node Pool. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [osDiskType] The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [osSku] Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; otherwise `temporary_name_for_rotation` must be specified when attempting a change.
  /// [podSubnetId] The ID of the Subnet where the pods in the default Node Pool should exist.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group. Changing this forces a new resource to be created.
  /// [scaleDownMode] Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  /// [snapshotId] The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property.
  /// [tags] A mapping of tags to assign to the Node Pool.
  /// [temporaryNameForRotation] Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing.
  /// [type] The type of Node Pool which should be created. Possible values are `VirtualMachineScaleSets`. Defaults to `VirtualMachineScaleSets`. Changing this forces a new resource to be created.
  /// [ultraSsdEnabled] Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [upgradeSettings] A `upgrade_settings` block as documented below.
  /// [vmSize] The size of the Virtual Machine, such as `Standard_DS2_v2`. `temporary_name_for_rotation` must be specified when attempting a resize.
  /// [vnetSubnetId] The ID of a Subnet where the Kubernetes Node Pool should exist.
  /// [workloadRuntime] Specifies the workload runtime used by the node pool. Possible value is `OCIContainer`.
  /// [zones] Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. `temporary_name_for_rotation` must be specified when changing this property.
  const KubernetesClusterDefaultNodePool({
    this.autoScalingEnabled,
    this.capacityReservationGroupId,
    this.fipsEnabled,
    this.gpuDriver,
    this.gpuInstance,
    this.hostEncryptionEnabled,
    this.hostGroupId,
    this.kubeletConfig,
    this.kubeletDiskType,
    this.linuxOsConfig,
    this.maxCount,
    this.maxPods,
    this.minCount,
    required this.name,
    this.nodeCount,
    this.nodeLabels,
    this.nodeNetworkProfile,
    this.nodePublicIpEnabled,
    this.nodePublicIpPrefixId,
    this.onlyCriticalAddonsEnabled,
    this.orchestratorVersion,
    this.osDiskSizeGb,
    this.osDiskType,
    this.osSku,
    this.podSubnetId,
    this.proximityPlacementGroupId,
    this.scaleDownMode,
    this.snapshotId,
    this.tags,
    this.temporaryNameForRotation,
    this.type,
    this.ultraSsdEnabled,
    this.upgradeSettings,
    this.vmSize,
    this.vnetSubnetId,
    this.workloadRuntime,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': ?autoScalingEnabled,
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'fipsEnabled': ?fipsEnabled,
      'gpuDriver': ?gpuDriver,
      'gpuInstance': ?gpuInstance,
      'hostEncryptionEnabled': ?hostEncryptionEnabled,
      'hostGroupId': ?hostGroupId,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterDefaultNodePoolKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'kubeletDiskType': ?kubeletDiskType,
      'linuxOsConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterDefaultNodePoolLinuxOsConfig, Map<String, dynamic>>(linuxOsConfig, (value) => value.toMap()),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'name': name,
      'nodeCount': ?nodeCount,
      'nodeLabels': ?nodeLabels,
      'nodeNetworkProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterDefaultNodePoolNodeNetworkProfile, Map<String, dynamic>>(nodeNetworkProfile, (value) => value.toMap()),
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'nodePublicIpPrefixId': ?nodePublicIpPrefixId,
      'onlyCriticalAddonsEnabled': ?onlyCriticalAddonsEnabled,
      'orchestratorVersion': ?orchestratorVersion,
      'osDiskSizeGb': ?osDiskSizeGb,
      'osDiskType': ?osDiskType,
      'osSku': ?osSku,
      'podSubnetId': ?podSubnetId,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'scaleDownMode': ?scaleDownMode,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'temporaryNameForRotation': ?temporaryNameForRotation,
      'type': ?type,
      'ultraSsdEnabled': ?ultraSsdEnabled,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterDefaultNodePoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSize': ?vmSize,
      'vnetSubnetId': ?vnetSubnetId,
      'workloadRuntime': ?workloadRuntime,
      'zones': ?zones,
    };
  }

  factory KubernetesClusterDefaultNodePool.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePool(
      autoScalingEnabled: (() { final guardedValue = map['autoScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacityReservationGroupId: (() { final guardedValue = map['capacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpuDriver: (() { final guardedValue = map['gpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuInstance: (() { final guardedValue = map['gpuInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostEncryptionEnabled: (() { final guardedValue = map['hostEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostGroupId: (() { final guardedValue = map['hostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterDefaultNodePoolKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeletDiskType: (() { final guardedValue = map['kubeletDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxOsConfig: (() { final guardedValue = map['linuxOsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterDefaultNodePoolLinuxOsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeNetworkProfile: (() { final guardedValue = map['nodeNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterDefaultNodePoolNodeNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePublicIpEnabled: (() { final guardedValue = map['nodePublicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodePublicIpPrefixId: (() { final guardedValue = map['nodePublicIpPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlyCriticalAddonsEnabled: (() { final guardedValue = map['onlyCriticalAddonsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      orchestratorVersion: (() { final guardedValue = map['orchestratorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskSizeGb: (() { final guardedValue = map['osDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      osDiskType: (() { final guardedValue = map['osDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osSku: (() { final guardedValue = map['osSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podSubnetId: (() { final guardedValue = map['podSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownMode: (() { final guardedValue = map['scaleDownMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      temporaryNameForRotation: (() { final guardedValue = map['temporaryNameForRotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ultraSsdEnabled: (() { final guardedValue = map['ultraSsdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterDefaultNodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetSubnetId: (() { final guardedValue = map['vnetSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadRuntime: (() { final guardedValue = map['workloadRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

