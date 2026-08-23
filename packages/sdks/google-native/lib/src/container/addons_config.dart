// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config.dart';
import 'config_connector_config.dart';
import 'dns_cache_config.dart';
import 'gce_persistent_disk_csi_driver_config.dart';
import 'gcp_filestore_csi_driver_config.dart';
import 'gcs_fuse_csi_driver_config.dart';
import 'gke_backup_agent_config.dart';
import 'horizontal_pod_autoscaling.dart';
import 'http_load_balancing.dart';
import 'kubernetes_dashboard.dart';
import 'network_policy_config.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfig {
  /// Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
  final pulumi.Input<CloudRunConfig>? cloudRunConfig;
  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final pulumi.Input<ConfigConnectorConfig>? configConnectorConfig;
  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final pulumi.Input<DnsCacheConfig>? dnsCacheConfig;
  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final pulumi.Input<GcePersistentDiskCsiDriverConfig>? gcePersistentDiskCsiDriverConfig;
  /// Configuration for the GCP Filestore CSI driver.
  final pulumi.Input<GcpFilestoreCsiDriverConfig>? gcpFilestoreCsiDriverConfig;
  /// Configuration for the Cloud Storage Fuse CSI driver.
  final pulumi.Input<GcsFuseCsiDriverConfig>? gcsFuseCsiDriverConfig;
  /// Configuration for the Backup for GKE agent addon.
  final pulumi.Input<GkeBackupAgentConfig>? gkeBackupAgentConfig;
  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final pulumi.Input<HorizontalPodAutoscaling>? horizontalPodAutoscaling;
  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final pulumi.Input<HttpLoadBalancing>? httpLoadBalancing;
  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final pulumi.Input<KubernetesDashboard>? kubernetesDashboard;
  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final pulumi.Input<NetworkPolicyConfig>? networkPolicyConfig;

  /// Creates a new [AddonsConfig].
  /// [cloudRunConfig] Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
  /// [configConnectorConfig] Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  /// [dnsCacheConfig] Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  /// [gcePersistentDiskCsiDriverConfig] Configuration for the Compute Engine Persistent Disk CSI driver.
  /// [gcpFilestoreCsiDriverConfig] Configuration for the GCP Filestore CSI driver.
  /// [gcsFuseCsiDriverConfig] Configuration for the Cloud Storage Fuse CSI driver.
  /// [gkeBackupAgentConfig] Configuration for the Backup for GKE agent addon.
  /// [horizontalPodAutoscaling] Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  /// [httpLoadBalancing] Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  /// [kubernetesDashboard] Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  /// [networkPolicyConfig] Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  const AddonsConfig({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.kubernetesDashboard,
    this.networkPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunConfig': ?pulumi.Input.mapOptionalInputValue<CloudRunConfig, Map<String, dynamic>>(cloudRunConfig, (value) => value.toMap()),
      'configConnectorConfig': ?pulumi.Input.mapOptionalInputValue<ConfigConnectorConfig, Map<String, dynamic>>(configConnectorConfig, (value) => value.toMap()),
      'dnsCacheConfig': ?pulumi.Input.mapOptionalInputValue<DnsCacheConfig, Map<String, dynamic>>(dnsCacheConfig, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcePersistentDiskCsiDriverConfig, Map<String, dynamic>>(gcePersistentDiskCsiDriverConfig, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcpFilestoreCsiDriverConfig, Map<String, dynamic>>(gcpFilestoreCsiDriverConfig, (value) => value.toMap()),
      'gcsFuseCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<GcsFuseCsiDriverConfig, Map<String, dynamic>>(gcsFuseCsiDriverConfig, (value) => value.toMap()),
      'gkeBackupAgentConfig': ?pulumi.Input.mapOptionalInputValue<GkeBackupAgentConfig, Map<String, dynamic>>(gkeBackupAgentConfig, (value) => value.toMap()),
      'horizontalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscaling, Map<String, dynamic>>(horizontalPodAutoscaling, (value) => value.toMap()),
      'httpLoadBalancing': ?pulumi.Input.mapOptionalInputValue<HttpLoadBalancing, Map<String, dynamic>>(httpLoadBalancing, (value) => value.toMap()),
      'kubernetesDashboard': ?pulumi.Input.mapOptionalInputValue<KubernetesDashboard, Map<String, dynamic>>(kubernetesDashboard, (value) => value.toMap()),
      'networkPolicyConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyConfig, Map<String, dynamic>>(networkPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AddonsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfig(
      cloudRunConfig: (() { final guardedValue = map['cloudRunConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRunConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configConnectorConfig: (() { final guardedValue = map['configConnectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigConnectorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsCacheConfig: (() { final guardedValue = map['dnsCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcePersistentDiskCsiDriverConfig: (() { final guardedValue = map['gcePersistentDiskCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcePersistentDiskCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcpFilestoreCsiDriverConfig: (() { final guardedValue = map['gcpFilestoreCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpFilestoreCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsFuseCsiDriverConfig: (() { final guardedValue = map['gcsFuseCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcsFuseCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeBackupAgentConfig: (() { final guardedValue = map['gkeBackupAgentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeBackupAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      horizontalPodAutoscaling: (() { final guardedValue = map['horizontalPodAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizontalPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpLoadBalancing: (() { final guardedValue = map['httpLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpLoadBalancing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesDashboard: (() { final guardedValue = map['kubernetesDashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesDashboard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicyConfig: (() { final guardedValue = map['networkPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
