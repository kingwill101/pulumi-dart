// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'get_kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'get_kubernetes_cluster_routing_agent.dart';

/// {@template pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// Arguments for getKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
class GetKubernetesClusterArgs {
  final pulumi.Input<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  final pulumi.Input<GetKubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  final pulumi.Input<List<GetKubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// The name of Kubernetes cluster.
  final pulumi.Input<String> name;
  final pulumi.Input<GetKubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  final pulumi.Input<GetKubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  final pulumi.Input<GetKubernetesClusterRoutingAgent>? routingAgent;
  /// A list of tag names applied to the node pool.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetKubernetesClusterArgs].
  /// [amdGpuDeviceMetricsExporterPlugin] Optional.
  /// [amdGpuDevicePlugin] Optional.
  /// [clusterAutoscalerConfigurations] Optional.
  /// [kubeconfigExpireSeconds] Optional.
  /// [name] The name of Kubernetes cluster.
  /// [nvidiaGpuDevicePlugin] Optional.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [routingAgent] Optional.
  /// [tags] A list of tag names applied to the node pool.
  const GetKubernetesClusterArgs({
    this.amdGpuDeviceMetricsExporterPlugin,
    this.amdGpuDevicePlugin,
    this.clusterAutoscalerConfigurations,
    this.kubeconfigExpireSeconds,
    required this.name,
    this.nvidiaGpuDevicePlugin,
    this.rdmaSharedDevicePlugin,
    this.routingAgent,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<GetKubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<GetKubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'name': name,
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      amdGpuDeviceMetricsExporterPlugin: (() { final guardedValue = map['amdGpuDeviceMetricsExporterPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amdGpuDevicePlugin: (() { final guardedValue = map['amdGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterAutoscalerConfigurations: (() { final guardedValue = map['clusterAutoscalerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetKubernetesClusterClusterAutoscalerConfiguration>(guardedValue, (value) => GetKubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kubeconfigExpireSeconds: (() { final guardedValue = map['kubeconfigExpireSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nvidiaGpuDevicePlugin: (() { final guardedValue = map['nvidiaGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdmaSharedDevicePlugin: (() { final guardedValue = map['rdmaSharedDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingAgent: (() { final guardedValue = map['routingAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

