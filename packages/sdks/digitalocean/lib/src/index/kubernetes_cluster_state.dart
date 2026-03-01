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
    pulumi.Output<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin,
    pulumi.Output<KubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin,
    pulumi.Output<bool>? autoUpgrade,
    pulumi.Output<List<KubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations,
    pulumi.Output<String>? clusterSubnet,
    pulumi.Output<String>? clusterUrn,
    pulumi.Output<KubernetesClusterControlPlaneFirewall>? controlPlaneFirewall,
    pulumi.Output<String>? createdAt,
    pulumi.Output<bool>? destroyAllAssociatedResources,
    pulumi.Output<String>? endpoint,
    pulumi.Output<bool>? ha,
    pulumi.Output<String>? ipv4Address,
    pulumi.Output<List<KubernetesClusterKubeConfig>>? kubeConfigs,
    pulumi.Output<int>? kubeconfigExpireSeconds,
    pulumi.Output<KubernetesClusterMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<String>? name,
    pulumi.Output<KubernetesClusterNodePool>? nodePool,
    pulumi.Output<KubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin,
    pulumi.Output<KubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? registryIntegration,
    pulumi.Output<KubernetesClusterRoutingAgent>? routingAgent,
    pulumi.Output<String>? serviceSubnet,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? surgeUpgrade,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? version,
    pulumi.Output<String>? vpcUuid,
  }) :
      amdGpuDeviceMetricsExporterPlugin = pulumi.Input.asOptionalInput<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>(amdGpuDeviceMetricsExporterPlugin),
      amdGpuDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterAmdGpuDevicePlugin>(amdGpuDevicePlugin),
      autoUpgrade = pulumi.Input.asOptionalInput<bool>(autoUpgrade),
      clusterAutoscalerConfigurations = pulumi.Input.asOptionalInput<List<KubernetesClusterClusterAutoscalerConfiguration>>(clusterAutoscalerConfigurations),
      clusterSubnet = pulumi.Input.asOptionalInput<String>(clusterSubnet),
      clusterUrn = pulumi.Input.asOptionalInput<String>(clusterUrn),
      controlPlaneFirewall = pulumi.Input.asOptionalInput<KubernetesClusterControlPlaneFirewall>(controlPlaneFirewall),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      destroyAllAssociatedResources = pulumi.Input.asOptionalInput<bool>(destroyAllAssociatedResources),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      ha = pulumi.Input.asOptionalInput<bool>(ha),
      ipv4Address = pulumi.Input.asOptionalInput<String>(ipv4Address),
      kubeConfigs = pulumi.Input.asOptionalInput<List<KubernetesClusterKubeConfig>>(kubeConfigs),
      kubeconfigExpireSeconds = pulumi.Input.asOptionalInput<int>(kubeconfigExpireSeconds),
      maintenancePolicy = pulumi.Input.asOptionalInput<KubernetesClusterMaintenancePolicy>(maintenancePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePool = pulumi.Input.asOptionalInput<KubernetesClusterNodePool>(nodePool),
      nvidiaGpuDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterNvidiaGpuDevicePlugin>(nvidiaGpuDevicePlugin),
      rdmaSharedDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterRdmaSharedDevicePlugin>(rdmaSharedDevicePlugin),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryIntegration = pulumi.Input.asOptionalInput<bool>(registryIntegration),
      routingAgent = pulumi.Input.asOptionalInput<KubernetesClusterRoutingAgent>(routingAgent),
      serviceSubnet = pulumi.Input.asOptionalInput<String>(serviceSubnet),
      status = pulumi.Input.asOptionalInput<String>(status),
      surgeUpgrade = pulumi.Input.asOptionalInput<bool>(surgeUpgrade),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

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
      amdGpuDeviceMetricsExporterPlugin: map['amdGpuDeviceMetricsExporterPlugin'] == null ? null : pulumi.Output.create<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>(KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((map['amdGpuDeviceMetricsExporterPlugin'] as Map).cast<String, dynamic>())),
      amdGpuDevicePlugin: map['amdGpuDevicePlugin'] == null ? null : pulumi.Output.create<KubernetesClusterAmdGpuDevicePlugin>(KubernetesClusterAmdGpuDevicePlugin.fromMap((map['amdGpuDevicePlugin'] as Map).cast<String, dynamic>())),
      autoUpgrade: map['autoUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoUpgrade'] as bool),
      clusterAutoscalerConfigurations: map['clusterAutoscalerConfigurations'] == null ? null : pulumi.Output.create<List<KubernetesClusterClusterAutoscalerConfiguration>>(pulumi.Input.decodeList<KubernetesClusterClusterAutoscalerConfiguration>(map['clusterAutoscalerConfigurations'], (value) => KubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      clusterSubnet: map['clusterSubnet'] == null ? null : pulumi.Output.create<String>(map['clusterSubnet'] as String),
      clusterUrn: map['clusterUrn'] == null ? null : pulumi.Output.create<String>(map['clusterUrn'] as String),
      controlPlaneFirewall: map['controlPlaneFirewall'] == null ? null : pulumi.Output.create<KubernetesClusterControlPlaneFirewall>(KubernetesClusterControlPlaneFirewall.fromMap((map['controlPlaneFirewall'] as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      destroyAllAssociatedResources: map['destroyAllAssociatedResources'] == null ? null : pulumi.Output.create<bool>(map['destroyAllAssociatedResources'] as bool),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      ha: map['ha'] == null ? null : pulumi.Output.create<bool>(map['ha'] as bool),
      ipv4Address: map['ipv4Address'] == null ? null : pulumi.Output.create<String>(map['ipv4Address'] as String),
      kubeConfigs: map['kubeConfigs'] == null ? null : pulumi.Output.create<List<KubernetesClusterKubeConfig>>(pulumi.Input.decodeList<KubernetesClusterKubeConfig>(map['kubeConfigs'], (value) => KubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kubeconfigExpireSeconds: map['kubeconfigExpireSeconds'] == null ? null : pulumi.Output.create<int>(map['kubeconfigExpireSeconds'] as int),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<KubernetesClusterMaintenancePolicy>(KubernetesClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodePool: map['nodePool'] == null ? null : pulumi.Output.create<KubernetesClusterNodePool>(KubernetesClusterNodePool.fromMap((map['nodePool'] as Map).cast<String, dynamic>())),
      nvidiaGpuDevicePlugin: map['nvidiaGpuDevicePlugin'] == null ? null : pulumi.Output.create<KubernetesClusterNvidiaGpuDevicePlugin>(KubernetesClusterNvidiaGpuDevicePlugin.fromMap((map['nvidiaGpuDevicePlugin'] as Map).cast<String, dynamic>())),
      rdmaSharedDevicePlugin: map['rdmaSharedDevicePlugin'] == null ? null : pulumi.Output.create<KubernetesClusterRdmaSharedDevicePlugin>(KubernetesClusterRdmaSharedDevicePlugin.fromMap((map['rdmaSharedDevicePlugin'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryIntegration: map['registryIntegration'] == null ? null : pulumi.Output.create<bool>(map['registryIntegration'] as bool),
      routingAgent: map['routingAgent'] == null ? null : pulumi.Output.create<KubernetesClusterRoutingAgent>(KubernetesClusterRoutingAgent.fromMap((map['routingAgent'] as Map).cast<String, dynamic>())),
      serviceSubnet: map['serviceSubnet'] == null ? null : pulumi.Output.create<String>(map['serviceSubnet'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      surgeUpgrade: map['surgeUpgrade'] == null ? null : pulumi.Output.create<bool>(map['surgeUpgrade'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcUuid: map['vpcUuid'] == null ? null : pulumi.Output.create<String>(map['vpcUuid'] as String),
    );
  }
}

