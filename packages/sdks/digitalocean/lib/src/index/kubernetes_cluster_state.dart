// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'kubernetes_cluster_control_plane_firewall.dart';
import 'kubernetes_cluster_kube_config.dart';
import 'kubernetes_cluster_maintenance_policy.dart';
import 'kubernetes_cluster_node_pool.dart';
import 'kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'kubernetes_cluster_routing_agent.dart';

/// Input properties used for looking up and filtering KubernetesCluster resources.
class KubernetesClusterState {
  /// Block containing options for the AMD GPU device metrics exporter component.
  final pulumi.Input<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  /// Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes.
  final pulumi.Input<KubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  final pulumi.Input<bool>? autoUpgrade;
  /// Block containing options for cluster auto-scaling.
  final pulumi.Input<List<KubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? clusterSubnet;
  /// The uniform resource name (URN) for the Kubernetes cluster.
  final pulumi.Input<String>? clusterUrn;
  /// A block representing the cluster's control plane firewall
  final pulumi.Input<KubernetesClusterControlPlaneFirewall>? controlPlaneFirewall;
  /// The date and time when the node was created.
  final pulumi.Input<String>? createdAt;
  /// **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  final pulumi.Input<bool>? destroyAllAssociatedResources;
  /// The base URL of the API server on the Kubernetes master node.
  final pulumi.Input<String>? endpoint;
  /// Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: false
  final pulumi.Input<bool>? ha;
  /// The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+)
  final pulumi.Input<String>? ipv4Address;
  /// A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  final pulumi.Input<List<KubernetesClusterKubeConfig>>? kubeConfigs;
  /// The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect.
  final pulumi.Input<KubernetesClusterMaintenancePolicy>? maintenancePolicy;
  /// A name for the Kubernetes cluster.
  final pulumi.Input<String>? name;
  /// A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  final pulumi.Input<KubernetesClusterNodePool>? nodePool;
  /// Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes.
  final pulumi.Input<KubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  final pulumi.Input<KubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster will be created.
  final pulumi.Input<String>? region;
  /// Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  final pulumi.Input<bool>? registryIntegration;
  /// Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  final pulumi.Input<KubernetesClusterRoutingAgent>? routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? serviceSubnet;
  /// A string indicating the current status of the individual node.
  final pulumi.Input<String>? status;
  /// Enable/disable surge upgrades for a cluster. Default: true
  final pulumi.Input<bool>? surgeUpgrade;
  /// A list of tag names to be applied to the Kubernetes cluster.
  final pulumi.Input<List<String>>? tags;
  /// The date and time when the node was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  final pulumi.Input<String>? version;
  /// The ID of the VPC where the Kubernetes cluster will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [KubernetesClusterState].
  /// [amdGpuDeviceMetricsExporterPlugin] Block containing options for the AMD GPU device metrics exporter component.
  /// [amdGpuDevicePlugin] Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes.
  /// [autoUpgrade] A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  /// [clusterAutoscalerConfigurations] Block containing options for cluster auto-scaling.
  /// [clusterSubnet] The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [clusterUrn] The uniform resource name (URN) for the Kubernetes cluster.
  /// [controlPlaneFirewall] A block representing the cluster's control plane firewall
  /// [createdAt] The date and time when the node was created.
  /// [destroyAllAssociatedResources] **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  /// [endpoint] The base URL of the API server on the Kubernetes master node.
  /// [ha] Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: false
  /// [ipv4Address] The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+)
  /// [kubeConfigs] A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  /// [kubeconfigExpireSeconds] The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  /// [maintenancePolicy] A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect.
  /// [name] A name for the Kubernetes cluster.
  /// [nodePool] A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  /// [nvidiaGpuDevicePlugin] Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [region] The slug identifier for the region where the Kubernetes cluster will be created.
  /// [registryIntegration] Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  /// [routingAgent] Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  /// [serviceSubnet] The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [status] A string indicating the current status of the individual node.
  /// [surgeUpgrade] Enable/disable surge upgrades for a cluster. Default: true
  /// [tags] A list of tag names to be applied to the Kubernetes cluster.
  /// [updatedAt] The date and time when the node was last updated.
  /// [version] The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  /// [vpcUuid] The ID of the VPC where the Kubernetes cluster will be located.
  KubernetesClusterState({
    this.amdGpuDeviceMetricsExporterPlugin,
    this.amdGpuDevicePlugin,
    this.autoUpgrade,
    this.clusterAutoscalerConfigurations,
    this.clusterSubnet,
    this.clusterUrn,
    this.controlPlaneFirewall,
    this.createdAt,
    this.destroyAllAssociatedResources,
    this.endpoint,
    this.ha,
    this.ipv4Address,
    this.kubeConfigs,
    this.kubeconfigExpireSeconds,
    this.maintenancePolicy,
    this.name,
    this.nodePool,
    this.nvidiaGpuDevicePlugin,
    this.rdmaSharedDevicePlugin,
    this.region,
    this.registryIntegration,
    this.routingAgent,
    this.serviceSubnet,
    this.status,
    this.surgeUpgrade,
    this.tags,
    this.updatedAt,
    this.version,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'autoUpgrade': ?autoUpgrade,
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<KubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterSubnet': ?clusterSubnet,
      'clusterUrn': ?clusterUrn,
      'controlPlaneFirewall': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterControlPlaneFirewall, Map<String, dynamic>>(controlPlaneFirewall, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'destroyAllAssociatedResources': ?destroyAllAssociatedResources,
      'endpoint': ?endpoint,
      'ha': ?ha,
      'ipv4Address': ?ipv4Address,
      'kubeConfigs': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterKubeConfig>, List<Map<String, dynamic>>>(kubeConfigs, (value) => pulumi.Input.encodeList<KubernetesClusterKubeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'nodePool': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNodePool, Map<String, dynamic>>(nodePool, (value) => value.toMap()),
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'region': ?region,
      'registryIntegration': ?registryIntegration,
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'serviceSubnet': ?serviceSubnet,
      'status': ?status,
      'surgeUpgrade': ?surgeUpgrade,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'version': ?version,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory KubernetesClusterState.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterState(
      amdGpuDeviceMetricsExporterPlugin: map['amdGpuDeviceMetricsExporterPlugin'] == null ? null : (KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((map['amdGpuDeviceMetricsExporterPlugin']! as Map).cast<String, dynamic>())).input(),
      amdGpuDevicePlugin: map['amdGpuDevicePlugin'] == null ? null : (KubernetesClusterAmdGpuDevicePlugin.fromMap((map['amdGpuDevicePlugin']! as Map).cast<String, dynamic>())).input(),
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade']! as bool).input(),
      clusterAutoscalerConfigurations: map['clusterAutoscalerConfigurations'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterClusterAutoscalerConfiguration>(map['clusterAutoscalerConfigurations']!, (value) => KubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterSubnet: map['clusterSubnet'] == null ? null : (map['clusterSubnet']! as String).input(),
      clusterUrn: map['clusterUrn'] == null ? null : (map['clusterUrn']! as String).input(),
      controlPlaneFirewall: map['controlPlaneFirewall'] == null ? null : (KubernetesClusterControlPlaneFirewall.fromMap((map['controlPlaneFirewall']! as Map).cast<String, dynamic>())).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      destroyAllAssociatedResources: map['destroyAllAssociatedResources'] == null ? null : (map['destroyAllAssociatedResources']! as bool).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      ha: map['ha'] == null ? null : (map['ha']! as bool).input(),
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address']! as String).input(),
      kubeConfigs: map['kubeConfigs'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterKubeConfig>(map['kubeConfigs']!, (value) => KubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kubeconfigExpireSeconds: map['kubeconfigExpireSeconds'] == null ? null : (map['kubeconfigExpireSeconds']! as int).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (KubernetesClusterMaintenancePolicy.fromMap((map['maintenancePolicy']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodePool: map['nodePool'] == null ? null : (KubernetesClusterNodePool.fromMap((map['nodePool']! as Map).cast<String, dynamic>())).input(),
      nvidiaGpuDevicePlugin: map['nvidiaGpuDevicePlugin'] == null ? null : (KubernetesClusterNvidiaGpuDevicePlugin.fromMap((map['nvidiaGpuDevicePlugin']! as Map).cast<String, dynamic>())).input(),
      rdmaSharedDevicePlugin: map['rdmaSharedDevicePlugin'] == null ? null : (KubernetesClusterRdmaSharedDevicePlugin.fromMap((map['rdmaSharedDevicePlugin']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      registryIntegration: map['registryIntegration'] == null ? null : (map['registryIntegration']! as bool).input(),
      routingAgent: map['routingAgent'] == null ? null : (KubernetesClusterRoutingAgent.fromMap((map['routingAgent']! as Map).cast<String, dynamic>())).input(),
      serviceSubnet: map['serviceSubnet'] == null ? null : (map['serviceSubnet']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      surgeUpgrade: map['surgeUpgrade'] == null ? null : (map['surgeUpgrade']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      vpcUuid: map['vpcUuid'] == null ? null : (map['vpcUuid']! as String).input(),
    );
  }
}

