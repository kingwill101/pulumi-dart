// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'kubernetes_cluster_amd_gpu_dra_driver.dart';
import 'kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'kubernetes_cluster_control_plane_firewall.dart';
import 'kubernetes_cluster_coredns_autoscaler.dart';
import 'kubernetes_cluster_maintenance_policy.dart';
import 'kubernetes_cluster_node_pool.dart';
import 'kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'kubernetes_cluster_nvidia_gpu_dra_driver.dart';
import 'kubernetes_cluster_p2p_oci_registry_plugin.dart';
import 'kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'kubernetes_cluster_routing_agent.dart';
import 'kubernetes_cluster_sso.dart';

/// {@template pulumi_index_kubernetes_cluster_kubernetes_cluster_args_doc}
/// The set of arguments for KubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_index_kubernetes_cluster_kubernetes_cluster_args_doc}
class KubernetesClusterArgs {
  /// Block containing options for the AMD GPU device metrics exporter component. If not specified, the component will not be installed in the cluster.
  final pulumi.Input<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  /// Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes. Mutually exclusive with `amdGpuDraDriver`.
  final pulumi.Input<KubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  /// Block containing options for the AMD GPU DRA driver component. Mutually exclusive with `amdGpuDevicePlugin`.
  final pulumi.Input<KubernetesClusterAmdGpuDraDriver>? amdGpuDraDriver;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  final pulumi.Input<bool>? autoUpgrade;
  /// Block containing options for cluster auto-scaling. For more information.
  final pulumi.Input<List<KubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? clusterSubnet;
  /// A block representing the cluster's control plane firewall
  final pulumi.Input<KubernetesClusterControlPlaneFirewall>? controlPlaneFirewall;
  /// Block containing options for the CoreDNS Autoscaler component, which scales CoreDNS replicas in proportion to the cluster's size. Default: true (for 1.36.0 and later)
  final pulumi.Input<KubernetesClusterCorednsAutoscaler>? corednsAutoscaler;
  /// **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  final pulumi.Input<bool>? destroyAllAssociatedResources;
  /// Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: true (for 1.36.0 and later)
  final pulumi.Input<bool>? ha;
  /// Enable/disable isolated worker nodes for the cluster. When enabled, each worker node runs on dedicated hardware. This can only be set at creation time. The cluster's VPC must have a NAT gateway attached. Default: false
  final pulumi.Input<bool>? isolatedWorkers;
  /// The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `autoUpgrade` must be set to `true` for this to have an effect.
  final pulumi.Input<KubernetesClusterMaintenancePolicy>? maintenancePolicy;
  /// A name for the Kubernetes cluster.
  final pulumi.Input<String>? name;
  /// A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  final pulumi.Input<KubernetesClusterNodePool> nodePool;
  /// Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes. Mutually exclusive with `nvidiaGpuDraDriver`.
  final pulumi.Input<KubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  /// Block containing options for the NVIDIA GPU DRA driver component. Mutually exclusive with `nvidiaGpuDevicePlugin`.
  final pulumi.Input<KubernetesClusterNvidiaGpuDraDriver>? nvidiaGpuDraDriver;
  /// Block containing options for the Peer-to-peer OCI registry plugin component. If not specified, the p2p-oci-registry-plugin component will not be installed in the cluster.
  final pulumi.Input<KubernetesClusterP2pOciRegistryPlugin>? p2pOciRegistryPlugin;
  /// Block containing options for the RDMA Shared Device Plugin (k8s-rdma-shared-dev-plugin) component. If not specified, the component will be enabled by default for clusters with GPU nodes connected to a dedicated high-speed networking fabric.
  final pulumi.Input<KubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster will be created.
  final pulumi.Input<String> region;
  /// Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  final pulumi.Input<bool>? registryIntegration;
  /// Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  final pulumi.Input<KubernetesClusterRoutingAgent>? routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? serviceSubnet;
  /// Block containing Single Sign-On (SSO) configuration for the cluster using OpenID Connect (OIDC).
  final pulumi.Input<List<KubernetesClusterSso>>? ssos;
  /// Enable/disable surge upgrades for a cluster. Default: true
  final pulumi.Input<bool>? surgeUpgrade;
  /// A list of tag names to be applied to the Kubernetes cluster.
  final pulumi.Input<List<String>>? tags;
  /// The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  final pulumi.Input<String> version;
  /// The ID of the VPC where the Kubernetes cluster will be located.
  final pulumi.Input<String>? vpcUuid;
  /// The ID of the VPC subnet for placing worker nodes. Must be a valid subnet in the cluster VPC. Requires that `vpcUuid` is also set.
  final pulumi.Input<String>? workerSubnetUuid;

  /// Creates a new [KubernetesClusterArgs].
  /// [amdGpuDeviceMetricsExporterPlugin] Block containing options for the AMD GPU device metrics exporter component. If not specified, the component will not be installed in the cluster.
  /// [amdGpuDevicePlugin] Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes. Mutually exclusive with `amdGpuDraDriver`.
  /// [amdGpuDraDriver] Block containing options for the AMD GPU DRA driver component. Mutually exclusive with `amdGpuDevicePlugin`.
  /// [autoUpgrade] A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  /// [clusterAutoscalerConfigurations] Block containing options for cluster auto-scaling. For more information.
  /// [clusterSubnet] The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [controlPlaneFirewall] A block representing the cluster's control plane firewall
  /// [corednsAutoscaler] Block containing options for the CoreDNS Autoscaler component, which scales CoreDNS replicas in proportion to the cluster's size. Default: true (for 1.36.0 and later)
  /// [destroyAllAssociatedResources] **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  /// [ha] Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: true (for 1.36.0 and later)
  /// [isolatedWorkers] Enable/disable isolated worker nodes for the cluster. When enabled, each worker node runs on dedicated hardware. This can only be set at creation time. The cluster's VPC must have a NAT gateway attached. Default: false
  /// [kubeconfigExpireSeconds] The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  /// [maintenancePolicy] A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `autoUpgrade` must be set to `true` for this to have an effect.
  /// [name] A name for the Kubernetes cluster.
  /// [nodePool] A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  /// [nvidiaGpuDevicePlugin] Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes. Mutually exclusive with `nvidiaGpuDraDriver`.
  /// [nvidiaGpuDraDriver] Block containing options for the NVIDIA GPU DRA driver component. Mutually exclusive with `nvidiaGpuDevicePlugin`.
  /// [p2pOciRegistryPlugin] Block containing options for the Peer-to-peer OCI registry plugin component. If not specified, the p2p-oci-registry-plugin component will not be installed in the cluster.
  /// [rdmaSharedDevicePlugin] Block containing options for the RDMA Shared Device Plugin (k8s-rdma-shared-dev-plugin) component. If not specified, the component will be enabled by default for clusters with GPU nodes connected to a dedicated high-speed networking fabric.
  /// [region] The slug identifier for the region where the Kubernetes cluster will be created.
  /// [registryIntegration] Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  /// [routingAgent] Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  /// [serviceSubnet] The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [ssos] Block containing Single Sign-On (SSO) configuration for the cluster using OpenID Connect (OIDC).
  /// [surgeUpgrade] Enable/disable surge upgrades for a cluster. Default: true
  /// [tags] A list of tag names to be applied to the Kubernetes cluster.
  /// [version] The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  /// [vpcUuid] The ID of the VPC where the Kubernetes cluster will be located.
  /// [workerSubnetUuid] The ID of the VPC subnet for placing worker nodes. Must be a valid subnet in the cluster VPC. Requires that `vpcUuid` is also set.
  const KubernetesClusterArgs({
    this.amdGpuDeviceMetricsExporterPlugin,
    this.amdGpuDevicePlugin,
    this.amdGpuDraDriver,
    this.autoUpgrade,
    this.clusterAutoscalerConfigurations,
    this.clusterSubnet,
    this.controlPlaneFirewall,
    this.corednsAutoscaler,
    this.destroyAllAssociatedResources,
    this.ha,
    this.isolatedWorkers,
    this.kubeconfigExpireSeconds,
    this.maintenancePolicy,
    this.name,
    required this.nodePool,
    this.nvidiaGpuDevicePlugin,
    this.nvidiaGpuDraDriver,
    this.p2pOciRegistryPlugin,
    this.rdmaSharedDevicePlugin,
    required this.region,
    this.registryIntegration,
    this.routingAgent,
    this.serviceSubnet,
    this.ssos,
    this.surgeUpgrade,
    this.tags,
    required this.version,
    this.vpcUuid,
    this.workerSubnetUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'amdGpuDraDriver': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDraDriver, Map<String, dynamic>>(amdGpuDraDriver, (value) => value.toMap()),
      'autoUpgrade': ?autoUpgrade,
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<KubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterSubnet': ?clusterSubnet,
      'controlPlaneFirewall': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterControlPlaneFirewall, Map<String, dynamic>>(controlPlaneFirewall, (value) => value.toMap()),
      'corednsAutoscaler': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterCorednsAutoscaler, Map<String, dynamic>>(corednsAutoscaler, (value) => value.toMap()),
      'destroyAllAssociatedResources': ?destroyAllAssociatedResources,
      'ha': ?ha,
      'isolatedWorkers': ?isolatedWorkers,
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'nodePool': pulumi.Input.mapInputValue<KubernetesClusterNodePool, Map<String, dynamic>>(nodePool, (value) => value.toMap()),
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'nvidiaGpuDraDriver': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNvidiaGpuDraDriver, Map<String, dynamic>>(nvidiaGpuDraDriver, (value) => value.toMap()),
      'p2pOciRegistryPlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterP2pOciRegistryPlugin, Map<String, dynamic>>(p2pOciRegistryPlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'region': region,
      'registryIntegration': ?registryIntegration,
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'serviceSubnet': ?serviceSubnet,
      'ssos': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterSso>, List<Map<String, dynamic>>>(ssos, (value) => pulumi.Input.encodeList<KubernetesClusterSso, Map<String, dynamic>>(value, (value) => value.toMap())),
      'surgeUpgrade': ?surgeUpgrade,
      'tags': ?tags,
      'version': version,
      'vpcUuid': ?vpcUuid,
      'workerSubnetUuid': ?workerSubnetUuid,
    };
  }

  factory KubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterArgs(
      amdGpuDeviceMetricsExporterPlugin: (() { final guardedValue = map['amdGpuDeviceMetricsExporterPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amdGpuDevicePlugin: (() { final guardedValue = map['amdGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amdGpuDraDriver: (() { final guardedValue = map['amdGpuDraDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterAmdGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoUpgrade: (() { final guardedValue = map['autoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterAutoscalerConfigurations: (() { final guardedValue = map['clusterAutoscalerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterClusterAutoscalerConfiguration>(guardedValue, (value) => KubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterSubnet: (() { final guardedValue = map['clusterSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlaneFirewall: (() { final guardedValue = map['controlPlaneFirewall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterControlPlaneFirewall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corednsAutoscaler: (() { final guardedValue = map['corednsAutoscaler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterCorednsAutoscaler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destroyAllAssociatedResources: (() { final guardedValue = map['destroyAllAssociatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ha: (() { final guardedValue = map['ha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isolatedWorkers: (() { final guardedValue = map['isolatedWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kubeconfigExpireSeconds: (() { final guardedValue = map['kubeconfigExpireSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePool: pulumi.Input.fromValue(KubernetesClusterNodePool.fromMap((map['nodePool']! as Map).cast<String, dynamic>())),
      nvidiaGpuDevicePlugin: (() { final guardedValue = map['nvidiaGpuDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nvidiaGpuDraDriver: (() { final guardedValue = map['nvidiaGpuDraDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterNvidiaGpuDraDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      p2pOciRegistryPlugin: (() { final guardedValue = map['p2pOciRegistryPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterP2pOciRegistryPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdmaSharedDevicePlugin: (() { final guardedValue = map['rdmaSharedDevicePlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      registryIntegration: (() { final guardedValue = map['registryIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routingAgent: (() { final guardedValue = map['routingAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceSubnet: (() { final guardedValue = map['serviceSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssos: (() { final guardedValue = map['ssos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterSso>(guardedValue, (value) => KubernetesClusterSso.fromMap((value as Map).cast<String, dynamic>()))); })(),
      surgeUpgrade: (() { final guardedValue = map['surgeUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerSubnetUuid: (() { final guardedValue = map['workerSubnetUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
