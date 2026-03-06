// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'get_kubernetes_cluster_control_plane_firewall.dart';
import 'get_kubernetes_cluster_kube_config.dart';
import 'get_kubernetes_cluster_maintenance_policy.dart';
import 'get_kubernetes_cluster_node_pool.dart';
import 'get_kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'get_kubernetes_cluster_routing_agent.dart';

/// Result data returned by getKubernetesCluster.
class GetKubernetesClusterResult {
  final GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin amdGpuDeviceMetricsExporterPlugin;
  final GetKubernetesClusterAmdGpuDevicePlugin amdGpuDevicePlugin;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  final bool autoUpgrade;
  final List<GetKubernetesClusterClusterAutoscalerConfiguration>? clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster.
  final String clusterSubnet;
  final List<GetKubernetesClusterControlPlaneFirewall> controlPlaneFirewalls;
  /// The date and time when the node was created.
  final String createdAt;
  /// The base URL of the API server on the Kubernetes master node.
  final String endpoint;
  final bool ha;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The public IPv4 address of the Kubernetes master node.
  final String ipv4Address;
  /// A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  final List<GetKubernetesClusterKubeConfig> kubeConfigs;
  final int? kubeconfigExpireSeconds;
  /// The maintenance policy of the Kubernetes cluster. Digital Ocean has a default maintenancen window.
  final List<GetKubernetesClusterMaintenancePolicy> maintenancePolicies;
  /// The auto-generated name for the node.
  final String name;
  /// A list of node pools associated with the cluster. Each node pool exports the following attributes:
  final List<GetKubernetesClusterNodePool> nodePools;
  final GetKubernetesClusterNvidiaGpuDevicePlugin nvidiaGpuDevicePlugin;
  final GetKubernetesClusterRdmaSharedDevicePlugin rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster is located.
  final String region;
  final GetKubernetesClusterRoutingAgent routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster.
  final String serviceSubnet;
  /// A string indicating the current status of the individual node.
  final String status;
  final bool surgeUpgrade;
  /// A list of tag names applied to the node pool.
  final List<String>? tags;
  /// The date and time when the node was last updated.
  final String updatedAt;
  /// The uniform resource name (URN) for the Kubernetes cluster.
  final String urn;
  /// The slug identifier for the version of Kubernetes used for the cluster.
  final String version;
  /// The ID of the VPC where the Kubernetes cluster is located.
  final String vpcUuid;

  /// Creates a new [GetKubernetesClusterResult].
  /// [amdGpuDeviceMetricsExporterPlugin] Required.
  /// [amdGpuDevicePlugin] Required.
  /// [autoUpgrade] A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  /// [clusterAutoscalerConfigurations] Optional.
  /// [clusterSubnet] The range of IP addresses in the overlay network of the Kubernetes cluster.
  /// [controlPlaneFirewalls] Required.
  /// [createdAt] The date and time when the node was created.
  /// [endpoint] The base URL of the API server on the Kubernetes master node.
  /// [ha] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Address] The public IPv4 address of the Kubernetes master node.
  /// [kubeConfigs] A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  /// [kubeconfigExpireSeconds] Optional.
  /// [maintenancePolicies] The maintenance policy of the Kubernetes cluster. Digital Ocean has a default maintenancen window.
  /// [name] The auto-generated name for the node.
  /// [nodePools] A list of node pools associated with the cluster. Each node pool exports the following attributes:
  /// [nvidiaGpuDevicePlugin] Required.
  /// [rdmaSharedDevicePlugin] Required.
  /// [region] The slug identifier for the region where the Kubernetes cluster is located.
  /// [routingAgent] Required.
  /// [serviceSubnet] The range of assignable IP addresses for services running in the Kubernetes cluster.
  /// [status] A string indicating the current status of the individual node.
  /// [surgeUpgrade] Required.
  /// [tags] A list of tag names applied to the node pool.
  /// [updatedAt] The date and time when the node was last updated.
  /// [urn] The uniform resource name (URN) for the Kubernetes cluster.
  /// [version] The slug identifier for the version of Kubernetes used for the cluster.
  /// [vpcUuid] The ID of the VPC where the Kubernetes cluster is located.
  const GetKubernetesClusterResult({
    required this.amdGpuDeviceMetricsExporterPlugin,
    required this.amdGpuDevicePlugin,
    required this.autoUpgrade,
    this.clusterAutoscalerConfigurations,
    required this.clusterSubnet,
    required this.controlPlaneFirewalls,
    required this.createdAt,
    required this.endpoint,
    required this.ha,
    required this.id,
    required this.ipv4Address,
    required this.kubeConfigs,
    this.kubeconfigExpireSeconds,
    required this.maintenancePolicies,
    required this.name,
    required this.nodePools,
    required this.nvidiaGpuDevicePlugin,
    required this.rdmaSharedDevicePlugin,
    required this.region,
    required this.routingAgent,
    required this.serviceSubnet,
    required this.status,
    required this.surgeUpgrade,
    this.tags,
    required this.updatedAt,
    required this.urn,
    required this.version,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': amdGpuDeviceMetricsExporterPlugin.toMap(),
      'amdGpuDevicePlugin': amdGpuDevicePlugin.toMap(),
      'autoUpgrade': autoUpgrade,
      'clusterAutoscalerConfigurations': ?(() { final guardedValue = clusterAutoscalerConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterSubnet': clusterSubnet,
      'controlPlaneFirewalls': pulumi.Input.encodeList<GetKubernetesClusterControlPlaneFirewall, Map<String, dynamic>>(controlPlaneFirewalls, (value) => value.toMap()),
      'createdAt': createdAt,
      'endpoint': endpoint,
      'ha': ha,
      'id': id,
      'ipv4Address': ipv4Address,
      'kubeConfigs': pulumi.Input.encodeList<GetKubernetesClusterKubeConfig, Map<String, dynamic>>(kubeConfigs, (value) => value.toMap()),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'maintenancePolicies': pulumi.Input.encodeList<GetKubernetesClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'name': name,
      'nodePools': pulumi.Input.encodeList<GetKubernetesClusterNodePool, Map<String, dynamic>>(nodePools, (value) => value.toMap()),
      'nvidiaGpuDevicePlugin': nvidiaGpuDevicePlugin.toMap(),
      'rdmaSharedDevicePlugin': rdmaSharedDevicePlugin.toMap(),
      'region': region,
      'routingAgent': routingAgent.toMap(),
      'serviceSubnet': serviceSubnet,
      'status': status,
      'surgeUpgrade': surgeUpgrade,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'urn': urn,
      'version': version,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetKubernetesClusterResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterResult(
      amdGpuDeviceMetricsExporterPlugin: GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((map['amdGpuDeviceMetricsExporterPlugin']! as Map).cast<String, dynamic>()),
      amdGpuDevicePlugin: GetKubernetesClusterAmdGpuDevicePlugin.fromMap((map['amdGpuDevicePlugin']! as Map).cast<String, dynamic>()),
      autoUpgrade: map['autoUpgrade'] as bool,
      clusterAutoscalerConfigurations: (() { final guardedValue = map['clusterAutoscalerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterClusterAutoscalerConfiguration>(guardedValue, (value) => GetKubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterSubnet: map['clusterSubnet'] as String,
      controlPlaneFirewalls: pulumi.Input.decodeList<GetKubernetesClusterControlPlaneFirewall>(map['controlPlaneFirewalls']!, (value) => GetKubernetesClusterControlPlaneFirewall.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      endpoint: map['endpoint'] as String,
      ha: map['ha'] as bool,
      id: map['id'] as String,
      ipv4Address: map['ipv4Address'] as String,
      kubeConfigs: pulumi.Input.decodeList<GetKubernetesClusterKubeConfig>(map['kubeConfigs']!, (value) => GetKubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())),
      kubeconfigExpireSeconds: (() { final guardedValue = map['kubeconfigExpireSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maintenancePolicies: pulumi.Input.decodeList<GetKubernetesClusterMaintenancePolicy>(map['maintenancePolicies']!, (value) => GetKubernetesClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nodePools: pulumi.Input.decodeList<GetKubernetesClusterNodePool>(map['nodePools']!, (value) => GetKubernetesClusterNodePool.fromMap((value as Map).cast<String, dynamic>())),
      nvidiaGpuDevicePlugin: GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap((map['nvidiaGpuDevicePlugin']! as Map).cast<String, dynamic>()),
      rdmaSharedDevicePlugin: GetKubernetesClusterRdmaSharedDevicePlugin.fromMap((map['rdmaSharedDevicePlugin']! as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      routingAgent: GetKubernetesClusterRoutingAgent.fromMap((map['routingAgent']! as Map).cast<String, dynamic>()),
      serviceSubnet: map['serviceSubnet'] as String,
      status: map['status'] as String,
      surgeUpgrade: map['surgeUpgrade'] as bool,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: map['updatedAt'] as String,
      urn: map['urn'] as String,
      version: map['version'] as String,
      vpcUuid: map['vpcUuid'] as String,
    );
  }
}

