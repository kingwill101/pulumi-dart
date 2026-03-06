// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config_container_v1beta1.dart';
import 'config_connector_config_container_v1beta1.dart';
import 'dns_cache_config_container_v1beta1.dart';
import 'gce_persistent_disk_csi_driver_config_container_v1beta1.dart';
import 'gcp_filestore_csi_driver_config_container_v1beta1.dart';
import 'gcs_fuse_csi_driver_config_container_v1beta1.dart';
import 'gke_backup_agent_config_container_v1beta1.dart';
import 'horizontal_pod_autoscaling_container_v1beta1.dart';
import 'http_load_balancing_container_v1beta1.dart';
import 'istio_config.dart';
import 'kalm_config.dart';
import 'kubernetes_dashboard_container_v1beta1.dart';
import 'network_policy_config_container_v1beta1.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfigContainerV1beta1 {
  /// Configuration for the Cloud Run addon. The `IstioConfig` addon must be enabled in order to enable Cloud Run addon. This option can only be enabled at cluster creation time.
  final pulumi.Input<CloudRunConfigContainerV1beta1>? cloudRunConfig;
  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final pulumi.Input<ConfigConnectorConfigContainerV1beta1>? configConnectorConfig;
  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final pulumi.Input<DnsCacheConfigContainerV1beta1>? dnsCacheConfig;
  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final pulumi.Input<GcePersistentDiskCsiDriverConfigContainerV1beta1>? gcePersistentDiskCsiDriverConfig;
  /// Configuration for the GCP Filestore CSI driver.
  final pulumi.Input<GcpFilestoreCsiDriverConfigContainerV1beta1>? gcpFilestoreCsiDriverConfig;
  /// Configuration for the Cloud Storage Fuse CSI driver.
  final pulumi.Input<GcsFuseCsiDriverConfigContainerV1beta1>? gcsFuseCsiDriverConfig;
  /// Configuration for the Backup for GKE agent addon.
  final pulumi.Input<GkeBackupAgentConfigContainerV1beta1>? gkeBackupAgentConfig;
  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final pulumi.Input<HorizontalPodAutoscalingContainerV1beta1>? horizontalPodAutoscaling;
  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final pulumi.Input<HttpLoadBalancingContainerV1beta1>? httpLoadBalancing;
  /// Configuration for Istio, an open platform to connect, manage, and secure microservices.
  final pulumi.Input<IstioConfig>? istioConfig;
  /// Configuration for the KALM addon, which manages the lifecycle of k8s applications.
  final pulumi.Input<KalmConfig>? kalmConfig;
  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final pulumi.Input<KubernetesDashboardContainerV1beta1>? kubernetesDashboard;
  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final pulumi.Input<NetworkPolicyConfigContainerV1beta1>? networkPolicyConfig;

  /// Creates a new [AddonsConfigContainerV1beta1].
  /// [cloudRunConfig] Configuration for the Cloud Run addon. The `IstioConfig` addon must be enabled in order to enable Cloud Run addon. This option can only be enabled at cluster creation time.
  /// [configConnectorConfig] Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  /// [dnsCacheConfig] Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  /// [gcePersistentDiskCsiDriverConfig] Configuration for the Compute Engine Persistent Disk CSI driver.
  /// [gcpFilestoreCsiDriverConfig] Configuration for the GCP Filestore CSI driver.
  /// [gcsFuseCsiDriverConfig] Configuration for the Cloud Storage Fuse CSI driver.
  /// [gkeBackupAgentConfig] Configuration for the Backup for GKE agent addon.
  /// [horizontalPodAutoscaling] Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  /// [httpLoadBalancing] Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  /// [istioConfig] Configuration for Istio, an open platform to connect, manage, and secure microservices.
  /// [kalmConfig] Configuration for the KALM addon, which manages the lifecycle of k8s applications.
  /// [kubernetesDashboard] Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  /// [networkPolicyConfig] Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  const AddonsConfigContainerV1beta1({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.istioConfig,
    this.kalmConfig,
    this.kubernetesDashboard,
    this.networkPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunConfig': ?pulumi.Input.mapOptionalInputValue<CloudRunConfigContainerV1beta1, Map<String, dynamic>>(cloudRunConfig, (value) => value.toMap()),
      'configConnectorConfig': ?pulumi.Input.mapOptionalInputValue<ConfigConnectorConfigContainerV1beta1, Map<String, dynamic>>(configConnectorConfig, (value) => value.toMap()),
      'dnsCacheConfig': ?pulumi.Input.mapOptionalInputValue<DnsCacheConfigContainerV1beta1, Map<String, dynamic>>(dnsCacheConfig, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcePersistentDiskCsiDriverConfigContainerV1beta1, Map<String, dynamic>>(gcePersistentDiskCsiDriverConfig, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcpFilestoreCsiDriverConfigContainerV1beta1, Map<String, dynamic>>(gcpFilestoreCsiDriverConfig, (value) => value.toMap()),
      'gcsFuseCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcsFuseCsiDriverConfigContainerV1beta1, Map<String, dynamic>>(gcsFuseCsiDriverConfig, (value) => value.toMap()),
      'gkeBackupAgentConfig': ?pulumi.Input.mapOptionalInputValue<GkeBackupAgentConfigContainerV1beta1, Map<String, dynamic>>(gkeBackupAgentConfig, (value) => value.toMap()),
      'horizontalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalingContainerV1beta1, Map<String, dynamic>>(horizontalPodAutoscaling, (value) => value.toMap()),
      'httpLoadBalancing': ?pulumi.Input.mapOptionalInputValue<HttpLoadBalancingContainerV1beta1, Map<String, dynamic>>(httpLoadBalancing, (value) => value.toMap()),
      'istioConfig': ?pulumi.Input.mapOptionalInputValue<IstioConfig, Map<String, dynamic>>(istioConfig, (value) => value.toMap()),
      'kalmConfig': ?pulumi.Input.mapOptionalInputValue<KalmConfig, Map<String, dynamic>>(kalmConfig, (value) => value.toMap()),
      'kubernetesDashboard': ?pulumi.Input.mapOptionalInputValue<KubernetesDashboardContainerV1beta1, Map<String, dynamic>>(kubernetesDashboard, (value) => value.toMap()),
      'networkPolicyConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyConfigContainerV1beta1, Map<String, dynamic>>(networkPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AddonsConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AddonsConfigContainerV1beta1(
      cloudRunConfig: (() { final guardedValue = map['cloudRunConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configConnectorConfig: (() { final guardedValue = map['configConnectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigConnectorConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsCacheConfig: (() { final guardedValue = map['dnsCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsCacheConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcePersistentDiskCsiDriverConfig: (() { final guardedValue = map['gcePersistentDiskCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcePersistentDiskCsiDriverConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcpFilestoreCsiDriverConfig: (() { final guardedValue = map['gcpFilestoreCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpFilestoreCsiDriverConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsFuseCsiDriverConfig: (() { final guardedValue = map['gcsFuseCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcsFuseCsiDriverConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeBackupAgentConfig: (() { final guardedValue = map['gkeBackupAgentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeBackupAgentConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      horizontalPodAutoscaling: (() { final guardedValue = map['horizontalPodAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizontalPodAutoscalingContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpLoadBalancing: (() { final guardedValue = map['httpLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpLoadBalancingContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      istioConfig: (() { final guardedValue = map['istioConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kalmConfig: (() { final guardedValue = map['kalmConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KalmConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesDashboard: (() { final guardedValue = map['kubernetesDashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesDashboardContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicyConfig: (() { final guardedValue = map['networkPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

