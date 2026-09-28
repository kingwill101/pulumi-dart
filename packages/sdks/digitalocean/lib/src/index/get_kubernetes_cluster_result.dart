// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_dra_driver.dart';
import 'get_kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'get_kubernetes_cluster_control_plane_firewall.dart';
import 'get_kubernetes_cluster_coredns_autoscaler.dart';
import 'get_kubernetes_cluster_kube_config.dart';
import 'get_kubernetes_cluster_maintenance_policy.dart';
import 'get_kubernetes_cluster_node_pool.dart';
import 'get_kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_nvidia_gpu_dra_driver.dart';
import 'get_kubernetes_cluster_p2p_oci_registry_plugin.dart';
import 'get_kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'get_kubernetes_cluster_routing_agent.dart';
import 'get_kubernetes_cluster_sso.dart';

/// Result data returned by getKubernetesCluster.
class GetKubernetesClusterResult {
  final GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin? amdGpuDeviceMetricsExporterPlugin;
  final GetKubernetesClusterAmdGpuDevicePlugin? amdGpuDevicePlugin;
  final GetKubernetesClusterAmdGpuDraDriver? amdGpuDraDriver;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  final bool? autoUpgrade;
  final List<GetKubernetesClusterClusterAutoscalerConfiguration>? clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster.
  final String? clusterSubnet;
  final List<GetKubernetesClusterControlPlaneFirewall>? controlPlaneFirewalls;
  final GetKubernetesClusterCorednsAutoscaler? corednsAutoscaler;
  /// The date and time when the node was created.
  final String? createdAt;
  /// The base URL of the API server on the Kubernetes master node.
  final String? endpoint;
  final bool? ha;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The public IPv4 address of the Kubernetes master node.
  final String? ipv4Address;
  /// A boolean value indicating whether the cluster has isolated worker nodes enabled.
  final bool? isolatedWorkers;
  /// A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  final List<GetKubernetesClusterKubeConfig>? kubeConfigs;
  final int? kubeconfigExpireSeconds;
  /// The maintenance policy of the Kubernetes cluster. Digital Ocean has a default maintenancen window.
  final List<GetKubernetesClusterMaintenancePolicy>? maintenancePolicies;
  /// The auto-generated name for the node.
  final String? name;
  /// A list of node pools associated with the cluster. Each node pool exports the following attributes:
  final List<GetKubernetesClusterNodePool>? nodePools;
  final GetKubernetesClusterNvidiaGpuDevicePlugin? nvidiaGpuDevicePlugin;
  final GetKubernetesClusterNvidiaGpuDraDriver? nvidiaGpuDraDriver;
  final GetKubernetesClusterP2pOciRegistryPlugin? p2pOciRegistryPlugin;
  final GetKubernetesClusterRdmaSharedDevicePlugin? rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster is located.
  final String? region;
  final GetKubernetesClusterRoutingAgent? routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster.
  final String? serviceSubnet;
  final List<GetKubernetesClusterSso>? ssos;
  /// A string indicating the current status of the individual node.
  final String? status;
  final bool? surgeUpgrade;
  /// A list of tag names applied to the node pool.
  final List<String>? tags;
  /// The date and time when the node was last updated.
  final String? updatedAt;
  /// The uniform resource name (URN) for the Kubernetes cluster.
  final String? urn;
  /// The slug identifier for the version of Kubernetes used for the cluster.
  final String? version;
  /// The ID of the VPC where the Kubernetes cluster is located.
  final String? vpcUuid;
  final String? workerSubnetUuid;

  /// Creates a new [GetKubernetesClusterResult].
  /// [amdGpuDeviceMetricsExporterPlugin] Optional.
  /// [amdGpuDevicePlugin] Optional.
  /// [amdGpuDraDriver] Optional.
  /// [autoUpgrade] A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  /// [clusterAutoscalerConfigurations] Optional.
  /// [clusterSubnet] The range of IP addresses in the overlay network of the Kubernetes cluster.
  /// [controlPlaneFirewalls] Optional.
  /// [corednsAutoscaler] Optional.
  /// [createdAt] The date and time when the node was created.
  /// [endpoint] The base URL of the API server on the Kubernetes master node.
  /// [ha] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Address] The public IPv4 address of the Kubernetes master node.
  /// [isolatedWorkers] A boolean value indicating whether the cluster has isolated worker nodes enabled.
  /// [kubeConfigs] A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  /// [kubeconfigExpireSeconds] Optional.
  /// [maintenancePolicies] The maintenance policy of the Kubernetes cluster. Digital Ocean has a default maintenancen window.
  /// [name] The auto-generated name for the node.
  /// [nodePools] A list of node pools associated with the cluster. Each node pool exports the following attributes:
  /// [nvidiaGpuDevicePlugin] Optional.
  /// [nvidiaGpuDraDriver] Optional.
  /// [p2pOciRegistryPlugin] Optional.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [region] The slug identifier for the region where the Kubernetes cluster is located.
  /// [routingAgent] Optional.
  /// [serviceSubnet] The range of assignable IP addresses for services running in the Kubernetes cluster.
  /// [ssos] Optional.
  /// [status] A string indicating the current status of the individual node.
  /// [surgeUpgrade] Optional.
  /// [tags] A list of tag names applied to the node pool.
  /// [updatedAt] The date and time when the node was last updated.
  /// [urn] The uniform resource name (URN) for the Kubernetes cluster.
  /// [version] The slug identifier for the version of Kubernetes used for the cluster.
  /// [vpcUuid] The ID of the VPC where the Kubernetes cluster is located.
  /// [workerSubnetUuid] Optional.
  const GetKubernetesClusterResult({
    this.amdGpuDeviceMetricsExporterPlugin,
    this.amdGpuDevicePlugin,
    this.amdGpuDraDriver,
    this.autoUpgrade,
    this.clusterAutoscalerConfigurations,
    this.clusterSubnet,
    this.controlPlaneFirewalls,
    this.corednsAutoscaler,
    this.createdAt,
    this.endpoint,
    this.ha,
    this.id,
    this.ipv4Address,
    this.isolatedWorkers,
    this.kubeConfigs,
    this.kubeconfigExpireSeconds,
    this.maintenancePolicies,
    this.name,
    this.nodePools,
    this.nvidiaGpuDevicePlugin,
    this.nvidiaGpuDraDriver,
    this.p2pOciRegistryPlugin,
    this.rdmaSharedDevicePlugin,
    this.region,
    this.routingAgent,
    this.serviceSubnet,
    this.ssos,
    this.status,
    this.surgeUpgrade,
    this.tags,
    this.updatedAt,
    this.urn,
    this.version,
    this.vpcUuid,
    this.workerSubnetUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?amdGpuDeviceMetricsExporterPlugin?.toMap(),
      'amdGpuDevicePlugin': ?amdGpuDevicePlugin?.toMap(),
      'amdGpuDraDriver': ?amdGpuDraDriver?.toMap(),
      'autoUpgrade': ?autoUpgrade,
      'clusterAutoscalerConfigurations': ?(() { final guardedValue = clusterAutoscalerConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterSubnet': ?clusterSubnet,
      'controlPlaneFirewalls': ?(() { final guardedValue = controlPlaneFirewalls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterControlPlaneFirewall, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'corednsAutoscaler': ?corednsAutoscaler?.toMap(),
      'createdAt': ?createdAt,
      'endpoint': ?endpoint,
      'ha': ?ha,
      'id': ?id,
      'ipv4Address': ?ipv4Address,
      'isolatedWorkers': ?isolatedWorkers,
      'kubeConfigs': ?(() { final guardedValue = kubeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterKubeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'nodePools': ?(() { final guardedValue = nodePools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterNodePool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nvidiaGpuDevicePlugin': ?nvidiaGpuDevicePlugin?.toMap(),
      'nvidiaGpuDraDriver': ?nvidiaGpuDraDriver?.toMap(),
      'p2pOciRegistryPlugin': ?p2pOciRegistryPlugin?.toMap(),
      'rdmaSharedDevicePlugin': ?rdmaSharedDevicePlugin?.toMap(),
      'region': ?region,
      'routingAgent': ?routingAgent?.toMap(),
      'serviceSubnet': ?serviceSubnet,
      'ssos': ?(() { final guardedValue = ssos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKubernetesClusterSso, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'surgeUpgrade': ?surgeUpgrade,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'urn': ?urn,
      'version': ?version,
      'vpcUuid': ?vpcUuid,
      'workerSubnetUuid': ?workerSubnetUuid,
    };
  }

  factory GetKubernetesClusterResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterResult(
      amdGpuDeviceMetricsExporterPlugin: (() { final guardedValue = map['amdGpuDeviceMetricsExporterPlugin']; if (guardedValue == null) return null; return GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      amdGpuDevicePlugin: (() { final guardedValue = map['amdGpuDevicePlugin']; if (guardedValue == null) return null; return GetKubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      amdGpuDraDriver: (() { final guardedValue = map['amdGpuDraDriver']; if (guardedValue == null) return null; return GetKubernetesClusterAmdGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoUpgrade: (() { final guardedValue = map['autoUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterAutoscalerConfigurations: (() { final guardedValue = map['clusterAutoscalerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterClusterAutoscalerConfiguration>(guardedValue, (value) => GetKubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterSubnet: (() { final guardedValue = map['clusterSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      controlPlaneFirewalls: (() { final guardedValue = map['controlPlaneFirewalls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterControlPlaneFirewall>(guardedValue, (value) => GetKubernetesClusterControlPlaneFirewall.fromMap((value as Map).cast<String, dynamic>())); })(),
      corednsAutoscaler: (() { final guardedValue = map['corednsAutoscaler']; if (guardedValue == null) return null; return GetKubernetesClusterCorednsAutoscaler.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ha: (() { final guardedValue = map['ha']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isolatedWorkers: (() { final guardedValue = map['isolatedWorkers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kubeConfigs: (() { final guardedValue = map['kubeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterKubeConfig>(guardedValue, (value) => GetKubernetesClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeconfigExpireSeconds: (() { final guardedValue = map['kubeconfigExpireSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterMaintenancePolicy>(guardedValue, (value) => GetKubernetesClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterNodePool>(guardedValue, (value) => GetKubernetesClusterNodePool.fromMap((value as Map).cast<String, dynamic>())); })(),
      nvidiaGpuDevicePlugin: (() { final guardedValue = map['nvidiaGpuDevicePlugin']; if (guardedValue == null) return null; return GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nvidiaGpuDraDriver: (() { final guardedValue = map['nvidiaGpuDraDriver']; if (guardedValue == null) return null; return GetKubernetesClusterNvidiaGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      p2pOciRegistryPlugin: (() { final guardedValue = map['p2pOciRegistryPlugin']; if (guardedValue == null) return null; return GetKubernetesClusterP2pOciRegistryPlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rdmaSharedDevicePlugin: (() { final guardedValue = map['rdmaSharedDevicePlugin']; if (guardedValue == null) return null; return GetKubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingAgent: (() { final guardedValue = map['routingAgent']; if (guardedValue == null) return null; return GetKubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceSubnet: (() { final guardedValue = map['serviceSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssos: (() { final guardedValue = map['ssos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKubernetesClusterSso>(guardedValue, (value) => GetKubernetesClusterSso.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      surgeUpgrade: (() { final guardedValue = map['surgeUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workerSubnetUuid: (() { final guardedValue = map['workerSubnetUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
