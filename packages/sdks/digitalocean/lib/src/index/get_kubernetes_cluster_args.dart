// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_dra_driver.dart';
import 'get_kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'get_kubernetes_cluster_coredns_autoscaler.dart';
import 'get_kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_nvidia_gpu_dra_driver.dart';
import 'get_kubernetes_cluster_p2p_oci_registry_plugin.dart';
import 'get_kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'get_kubernetes_cluster_routing_agent.dart';
import 'get_kubernetes_cluster_sso.dart';

/// {@template pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// Arguments for getKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
class GetKubernetesClusterArgs {
  final pulumi.Input<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  final pulumi.Input<GetKubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  final pulumi.Input<GetKubernetesClusterAmdGpuDraDriver>? amdGpuDraDriver;
  final pulumi.Input<List<GetKubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  final pulumi.Input<GetKubernetesClusterCorednsAutoscaler>? corednsAutoscaler;
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// The name of Kubernetes cluster.
  final pulumi.Input<String> name;
  final pulumi.Input<GetKubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  final pulumi.Input<GetKubernetesClusterNvidiaGpuDraDriver>? nvidiaGpuDraDriver;
  final pulumi.Input<GetKubernetesClusterP2pOciRegistryPlugin>? p2pOciRegistryPlugin;
  final pulumi.Input<GetKubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  final pulumi.Input<GetKubernetesClusterRoutingAgent>? routingAgent;
  final pulumi.Input<List<GetKubernetesClusterSso>>? ssos;
  /// A list of tag names applied to the node pool.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetKubernetesClusterArgs].
  /// [amdGpuDeviceMetricsExporterPlugin] Optional.
  /// [amdGpuDevicePlugin] Optional.
  /// [amdGpuDraDriver] Optional.
  /// [clusterAutoscalerConfigurations] Optional.
  /// [corednsAutoscaler] Optional.
  /// [kubeconfigExpireSeconds] Optional.
  /// [name] The name of Kubernetes cluster.
  /// [nvidiaGpuDevicePlugin] Optional.
  /// [nvidiaGpuDraDriver] Optional.
  /// [p2pOciRegistryPlugin] Optional.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [routingAgent] Optional.
  /// [ssos] Optional.
  /// [tags] A list of tag names applied to the node pool.
  const GetKubernetesClusterArgs({
    this.amdGpuDeviceMetricsExporterPlugin,
    this.amdGpuDevicePlugin,
    this.amdGpuDraDriver,
    this.clusterAutoscalerConfigurations,
    this.corednsAutoscaler,
    this.kubeconfigExpireSeconds,
    required this.name,
    this.nvidiaGpuDevicePlugin,
    this.nvidiaGpuDraDriver,
    this.p2pOciRegistryPlugin,
    this.rdmaSharedDevicePlugin,
    this.routingAgent,
    this.ssos,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'amdGpuDraDriver': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDraDriver, Map<String, dynamic>>(amdGpuDraDriver, (value) => value.toMap()),
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<GetKubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<GetKubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'corednsAutoscaler': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterCorednsAutoscaler, Map<String, dynamic>>(corednsAutoscaler, (value) => value.toMap()),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'name': name,
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'nvidiaGpuDraDriver': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterNvidiaGpuDraDriver, Map<String, dynamic>>(nvidiaGpuDraDriver, (value) => value.toMap()),
      'p2pOciRegistryPlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterP2pOciRegistryPlugin, Map<String, dynamic>>(p2pOciRegistryPlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'ssos': ?pulumi.Input.mapOptionalInputValue<List<GetKubernetesClusterSso>, List<Map<String, dynamic>>>(ssos, (value) => pulumi.Input.encodeList<GetKubernetesClusterSso, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      amdGpuDeviceMetricsExporterPlugin: (() { final guardedValue = map['amdGpuDeviceMetricsExporterPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amdGpuDevicePlugin: (() { final guardedValue = map['amdGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amdGpuDraDriver: (() { final guardedValue = map['amdGpuDraDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterAmdGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterAutoscalerConfigurations: (() { final guardedValue = map['clusterAutoscalerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetKubernetesClusterClusterAutoscalerConfiguration>(guardedValue, (value) => GetKubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      corednsAutoscaler: (() { final guardedValue = map['corednsAutoscaler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterCorednsAutoscaler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeconfigExpireSeconds: (() { final guardedValue = map['kubeconfigExpireSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nvidiaGpuDevicePlugin: (() { final guardedValue = map['nvidiaGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nvidiaGpuDraDriver: (() { final guardedValue = map['nvidiaGpuDraDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterNvidiaGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      p2pOciRegistryPlugin: (() { final guardedValue = map['p2pOciRegistryPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterP2pOciRegistryPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdmaSharedDevicePlugin: (() { final guardedValue = map['rdmaSharedDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingAgent: (() { final guardedValue = map['routingAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetKubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssos: (() { final guardedValue = map['ssos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetKubernetesClusterSso>(guardedValue, (value) => GetKubernetesClusterSso.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
