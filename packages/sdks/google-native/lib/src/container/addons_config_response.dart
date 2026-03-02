// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_config_response.dart';
import 'config_connector_config_response.dart';
import 'dns_cache_config_response.dart';
import 'gce_persistent_disk_csi_driver_config_response.dart';
import 'gcp_filestore_csi_driver_config_response.dart';
import 'gcs_fuse_csi_driver_config_response.dart';
import 'gke_backup_agent_config_response.dart';
import 'horizontal_pod_autoscaling_response.dart';
import 'http_load_balancing_response.dart';
import 'kubernetes_dashboard_response.dart';
import 'network_policy_config_response.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfigResponse {
  /// Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
  final pulumi.Input<CloudRunConfigResponse> cloudRunConfig;
  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final pulumi.Input<ConfigConnectorConfigResponse> configConnectorConfig;
  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final pulumi.Input<DnsCacheConfigResponse> dnsCacheConfig;
  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final pulumi.Input<GcePersistentDiskCsiDriverConfigResponse> gcePersistentDiskCsiDriverConfig;
  /// Configuration for the GCP Filestore CSI driver.
  final pulumi.Input<GcpFilestoreCsiDriverConfigResponse> gcpFilestoreCsiDriverConfig;
  /// Configuration for the Cloud Storage Fuse CSI driver.
  final pulumi.Input<GcsFuseCsiDriverConfigResponse> gcsFuseCsiDriverConfig;
  /// Configuration for the Backup for GKE agent addon.
  final pulumi.Input<GkeBackupAgentConfigResponse> gkeBackupAgentConfig;
  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final pulumi.Input<HorizontalPodAutoscalingResponse> horizontalPodAutoscaling;
  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final pulumi.Input<HttpLoadBalancingResponse> httpLoadBalancing;
  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final pulumi.Input<KubernetesDashboardResponse> kubernetesDashboard;
  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final pulumi.Input<NetworkPolicyConfigResponse> networkPolicyConfig;

  /// Creates a new [AddonsConfigResponse].
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
  AddonsConfigResponse({
    required this.cloudRunConfig,
    required this.configConnectorConfig,
    required this.dnsCacheConfig,
    required this.gcePersistentDiskCsiDriverConfig,
    required this.gcpFilestoreCsiDriverConfig,
    required this.gcsFuseCsiDriverConfig,
    required this.gkeBackupAgentConfig,
    required this.horizontalPodAutoscaling,
    required this.httpLoadBalancing,
    required this.kubernetesDashboard,
    required this.networkPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunConfig': pulumi.Input.mapInputValue<CloudRunConfigResponse, Map<String, dynamic>>(cloudRunConfig, (value) => value.toMap()),
      'configConnectorConfig': pulumi.Input.mapInputValue<ConfigConnectorConfigResponse, Map<String, dynamic>>(configConnectorConfig, (value) => value.toMap()),
      'dnsCacheConfig': pulumi.Input.mapInputValue<DnsCacheConfigResponse, Map<String, dynamic>>(dnsCacheConfig, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfig': pulumi.Input.mapInputValue<GcePersistentDiskCsiDriverConfigResponse, Map<String, dynamic>>(gcePersistentDiskCsiDriverConfig, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfig': pulumi.Input.mapInputValue<GcpFilestoreCsiDriverConfigResponse, Map<String, dynamic>>(gcpFilestoreCsiDriverConfig, (value) => value.toMap()),
      'gcsFuseCsiDriverConfig': pulumi.Input.mapInputValue<GcsFuseCsiDriverConfigResponse, Map<String, dynamic>>(gcsFuseCsiDriverConfig, (value) => value.toMap()),
      'gkeBackupAgentConfig': pulumi.Input.mapInputValue<GkeBackupAgentConfigResponse, Map<String, dynamic>>(gkeBackupAgentConfig, (value) => value.toMap()),
      'horizontalPodAutoscaling': pulumi.Input.mapInputValue<HorizontalPodAutoscalingResponse, Map<String, dynamic>>(horizontalPodAutoscaling, (value) => value.toMap()),
      'httpLoadBalancing': pulumi.Input.mapInputValue<HttpLoadBalancingResponse, Map<String, dynamic>>(httpLoadBalancing, (value) => value.toMap()),
      'kubernetesDashboard': pulumi.Input.mapInputValue<KubernetesDashboardResponse, Map<String, dynamic>>(kubernetesDashboard, (value) => value.toMap()),
      'networkPolicyConfig': pulumi.Input.mapInputValue<NetworkPolicyConfigResponse, Map<String, dynamic>>(networkPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AddonsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AddonsConfigResponse(
      cloudRunConfig: (CloudRunConfigResponse.fromMap((map['cloudRunConfig'] as Map).cast<String, dynamic>())).input(),
      configConnectorConfig: (ConfigConnectorConfigResponse.fromMap((map['configConnectorConfig'] as Map).cast<String, dynamic>())).input(),
      dnsCacheConfig: (DnsCacheConfigResponse.fromMap((map['dnsCacheConfig'] as Map).cast<String, dynamic>())).input(),
      gcePersistentDiskCsiDriverConfig: (GcePersistentDiskCsiDriverConfigResponse.fromMap((map['gcePersistentDiskCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gcpFilestoreCsiDriverConfig: (GcpFilestoreCsiDriverConfigResponse.fromMap((map['gcpFilestoreCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gcsFuseCsiDriverConfig: (GcsFuseCsiDriverConfigResponse.fromMap((map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gkeBackupAgentConfig: (GkeBackupAgentConfigResponse.fromMap((map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>())).input(),
      horizontalPodAutoscaling: (HorizontalPodAutoscalingResponse.fromMap((map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>())).input(),
      httpLoadBalancing: (HttpLoadBalancingResponse.fromMap((map['httpLoadBalancing'] as Map).cast<String, dynamic>())).input(),
      kubernetesDashboard: (KubernetesDashboardResponse.fromMap((map['kubernetesDashboard'] as Map).cast<String, dynamic>())).input(),
      networkPolicyConfig: (NetworkPolicyConfigResponse.fromMap((map['networkPolicyConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

