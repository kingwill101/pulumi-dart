// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config_cloudrun_config.dart';
import 'cluster_addons_config_config_connector_config.dart';
import 'cluster_addons_config_dns_cache_config.dart';
import 'cluster_addons_config_gce_persistent_disk_csi_driver_config.dart';
import 'cluster_addons_config_gcp_filestore_csi_driver_config.dart';
import 'cluster_addons_config_gcs_fuse_csi_driver_config.dart';
import 'cluster_addons_config_gke_backup_agent_config.dart';
import 'cluster_addons_config_horizontal_pod_autoscaling.dart';
import 'cluster_addons_config_http_load_balancing.dart';
import 'cluster_addons_config_istio_config.dart';
import 'cluster_addons_config_kalm_config.dart';
import 'cluster_addons_config_lustre_csi_driver_config.dart';
import 'cluster_addons_config_network_policy_config.dart';
import 'cluster_addons_config_parallelstore_csi_driver_config.dart';
import 'cluster_addons_config_pod_snapshot_config.dart';
import 'cluster_addons_config_ray_operator_config.dart';
import 'cluster_addons_config_stateful_ha_config.dart';

class ClusterAddonsConfig {
  /// . Structure is documented below.
  final pulumi.Input<ClusterAddonsConfigCloudrunConfig>? cloudrunConfig;
  /// .
  /// The status of the ConfigConnector addon. It is disabled by default; Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigConfigConnectorConfig>? configConnectorConfig;
  /// .
  /// The status of the NodeLocal DNSCache addon. It is disabled by default.
  /// Set `enabled = true` to enable.
  ///
  /// **Enabling/Disabling NodeLocal DNSCache in an existing cluster is a disruptive operation.
  /// All cluster nodes running GKE 1.15 and higher are recreated.**
  final pulumi.Input<ClusterAddonsConfigDnsCacheConfig>? dnsCacheConfig;
  /// .
  /// Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Set `enabled = true` to enable.
  ///
  /// **Note:** The Compute Engine persistent disk CSI Driver is enabled by default on newly created clusters for the following versions: Linux clusters: GKE version 1.18.10-gke.2100 or later, or 1.19.3-gke.2100 or later.
  final pulumi.Input<ClusterAddonsConfigGcePersistentDiskCsiDriverConfig>? gcePersistentDiskCsiDriverConfig;
  /// The status of the Filestore CSI driver addon,
  /// which allows the usage of filestore instance as volumes.
  /// It is disabled by default; set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigGcpFilestoreCsiDriverConfig>? gcpFilestoreCsiDriverConfig;
  /// The status of the GCSFuse CSI driver addon,
  /// which allows the usage of a gcs bucket as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is enabled by default for Autopilot clusters with version 1.24 or later; set `enabled = true` to enable it explicitly.
  /// See [Enable the Cloud Storage FUSE CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/cloud-storage-fuse-csi-driver#enable) for more information.
  final pulumi.Input<ClusterAddonsConfigGcsFuseCsiDriverConfig>? gcsFuseCsiDriverConfig;
  /// .
  /// The status of the Backup for GKE agent addon. It is disabled by default; Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigGkeBackupAgentConfig>? gkeBackupAgentConfig;
  /// The status of the Horizontal Pod Autoscaling
  /// addon, which increases or decreases the number of replica pods a replication controller
  /// has based on the resource usage of the existing pods.
  /// It is enabled by default;
  /// set `disabled = true` to disable.
  final pulumi.Input<ClusterAddonsConfigHorizontalPodAutoscaling>? horizontalPodAutoscaling;
  /// The status of the HTTP (L7) load balancing
  /// controller addon, which makes it easy to set up HTTP load balancers for services in a
  /// cluster. It is enabled by default; set `disabled = true` to disable.
  final pulumi.Input<ClusterAddonsConfigHttpLoadBalancing>? httpLoadBalancing;
  /// .
  /// Structure is documented below.
  final pulumi.Input<ClusterAddonsConfigIstioConfig>? istioConfig;
  /// .
  /// Configuration for the KALM addon, which manages the lifecycle of k8s. It is disabled by default; Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigKalmConfig>? kalmConfig;
  /// The status of the Lustre CSI driver addon,
  /// which allows the usage of a Lustre instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is disabled by default for Autopilot clusters; set `enabled = true` to enable.
  /// Lustre CSI Driver Config has optional subfield
  /// `enable_legacy_lustre_port` which allows the Lustre CSI driver to initialize LNet (the virtual networklayer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  /// See [Enable Lustre CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/lustre-csi-driver-new-volume) for more information.
  final pulumi.Input<ClusterAddonsConfigLustreCsiDriverConfig>? lustreCsiDriverConfig;
  /// Whether we should enable the network policy addon
  /// for the master.  This must be enabled in order to enable network policy for the nodes.
  /// To enable this, you must also define a `network_policy` block,
  /// otherwise nothing will happen.
  /// It can only be disabled if the nodes already do not have network policies enabled.
  /// Defaults to disabled; set `disabled = false` to enable.
  final pulumi.Input<ClusterAddonsConfigNetworkPolicyConfig>? networkPolicyConfig;
  /// The status of the Parallelstore CSI driver addon,
  /// which allows the usage of a Parallelstore instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is enabled by default for Autopilot clusters with version 1.29 or later; set `enabled = true` to enable it explicitly.
  /// See [Enable the Parallelstore CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/parallelstore-csi-new-volume#enable) for more information.
  final pulumi.Input<ClusterAddonsConfigParallelstoreCsiDriverConfig>? parallelstoreCsiDriverConfig;
  /// The status of the Pod Snapshot addon. It is disabled by default. Set `enabled = true` to enable.
  ///
  /// This example `addons_config` disables two addons:
  final pulumi.Input<ClusterAddonsConfigPodSnapshotConfig>? podSnapshotConfig;
  /// . The status of the [Ray Operator
  /// addon](https://cloud.google.com/kubernetes-engine/docs/add-on/ray-on-gke/concepts/overview).
  /// It is disabled by default. Set `enabled = true` to enable. The minimum
  /// cluster version to enable Ray is 1.30.0-gke.1747000.
  ///
  /// Ray Operator config has optional subfields
  /// `ray_cluster_logging_config.enabled` and
  /// `ray_cluster_monitoring_config.enabled` which control Ray Cluster logging
  /// and monitoring respectively. See [Collect and view logs and metrics for Ray
  /// clusters on
  /// GKE](https://cloud.google.com/kubernetes-engine/docs/add-on/ray-on-gke/how-to/collect-view-logs-metrics)
  /// for more information.
  final pulumi.Input<List<ClusterAddonsConfigRayOperatorConfig>>? rayOperatorConfigs;
  /// .
  /// The status of the Stateful HA addon, which provides automatic configurable failover for stateful applications.
  /// It is disabled by default for Standard clusters. Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigStatefulHaConfig>? statefulHaConfig;

  /// Creates a new [ClusterAddonsConfig].
  /// [cloudrunConfig] . Structure is documented below.
  /// [configConnectorConfig] .
  /// [dnsCacheConfig] .
  /// [gcePersistentDiskCsiDriverConfig] .
  /// [gcpFilestoreCsiDriverConfig] The status of the Filestore CSI driver addon,
  /// [gcsFuseCsiDriverConfig] The status of the GCSFuse CSI driver addon,
  /// [gkeBackupAgentConfig] .
  /// [horizontalPodAutoscaling] The status of the Horizontal Pod Autoscaling
  /// [httpLoadBalancing] The status of the HTTP (L7) load balancing
  /// [istioConfig] .
  /// [kalmConfig] .
  /// [lustreCsiDriverConfig] The status of the Lustre CSI driver addon,
  /// [networkPolicyConfig] Whether we should enable the network policy addon
  /// [parallelstoreCsiDriverConfig] The status of the Parallelstore CSI driver addon,
  /// [podSnapshotConfig] The status of the Pod Snapshot addon. It is disabled by default. Set `enabled = true` to enable.
  /// [rayOperatorConfigs] . The status of the [Ray Operator
  /// [statefulHaConfig] .
  ClusterAddonsConfig({
    this.cloudrunConfig,
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
    this.lustreCsiDriverConfig,
    this.networkPolicyConfig,
    this.parallelstoreCsiDriverConfig,
    this.podSnapshotConfig,
    this.rayOperatorConfigs,
    this.statefulHaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudrunConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigCloudrunConfig, Map<String, dynamic>>(cloudrunConfig, (value) => value.toMap()),
      'configConnectorConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigConfigConnectorConfig, Map<String, dynamic>>(configConnectorConfig, (value) => value.toMap()),
      'dnsCacheConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigDnsCacheConfig, Map<String, dynamic>>(dnsCacheConfig, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcePersistentDiskCsiDriverConfig, Map<String, dynamic>>(gcePersistentDiskCsiDriverConfig, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcpFilestoreCsiDriverConfig, Map<String, dynamic>>(gcpFilestoreCsiDriverConfig, (value) => value.toMap()),
      'gcsFuseCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcsFuseCsiDriverConfig, Map<String, dynamic>>(gcsFuseCsiDriverConfig, (value) => value.toMap()),
      'gkeBackupAgentConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGkeBackupAgentConfig, Map<String, dynamic>>(gkeBackupAgentConfig, (value) => value.toMap()),
      'horizontalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigHorizontalPodAutoscaling, Map<String, dynamic>>(horizontalPodAutoscaling, (value) => value.toMap()),
      'httpLoadBalancing': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigHttpLoadBalancing, Map<String, dynamic>>(httpLoadBalancing, (value) => value.toMap()),
      'istioConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigIstioConfig, Map<String, dynamic>>(istioConfig, (value) => value.toMap()),
      'kalmConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigKalmConfig, Map<String, dynamic>>(kalmConfig, (value) => value.toMap()),
      'lustreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigLustreCsiDriverConfig, Map<String, dynamic>>(lustreCsiDriverConfig, (value) => value.toMap()),
      'networkPolicyConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigNetworkPolicyConfig, Map<String, dynamic>>(networkPolicyConfig, (value) => value.toMap()),
      'parallelstoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigParallelstoreCsiDriverConfig, Map<String, dynamic>>(parallelstoreCsiDriverConfig, (value) => value.toMap()),
      'podSnapshotConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigPodSnapshotConfig, Map<String, dynamic>>(podSnapshotConfig, (value) => value.toMap()),
      'rayOperatorConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterAddonsConfigRayOperatorConfig>, List<Map<String, dynamic>>>(rayOperatorConfigs, (value) => pulumi.Input.encodeList<ClusterAddonsConfigRayOperatorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulHaConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigStatefulHaConfig, Map<String, dynamic>>(statefulHaConfig, (value) => value.toMap()),
    };
  }

  factory ClusterAddonsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfig(
      cloudrunConfig: map['cloudrunConfig'] == null ? null : (ClusterAddonsConfigCloudrunConfig.fromMap((map['cloudrunConfig'] as Map).cast<String, dynamic>())).input(),
      configConnectorConfig: map['configConnectorConfig'] == null ? null : (ClusterAddonsConfigConfigConnectorConfig.fromMap((map['configConnectorConfig'] as Map).cast<String, dynamic>())).input(),
      dnsCacheConfig: map['dnsCacheConfig'] == null ? null : (ClusterAddonsConfigDnsCacheConfig.fromMap((map['dnsCacheConfig'] as Map).cast<String, dynamic>())).input(),
      gcePersistentDiskCsiDriverConfig: map['gcePersistentDiskCsiDriverConfig'] == null ? null : (ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap((map['gcePersistentDiskCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null ? null : (ClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap((map['gcpFilestoreCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null ? null : (ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap((map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null ? null : (ClusterAddonsConfigGkeBackupAgentConfig.fromMap((map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>())).input(),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null ? null : (ClusterAddonsConfigHorizontalPodAutoscaling.fromMap((map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>())).input(),
      httpLoadBalancing: map['httpLoadBalancing'] == null ? null : (ClusterAddonsConfigHttpLoadBalancing.fromMap((map['httpLoadBalancing'] as Map).cast<String, dynamic>())).input(),
      istioConfig: map['istioConfig'] == null ? null : (ClusterAddonsConfigIstioConfig.fromMap((map['istioConfig'] as Map).cast<String, dynamic>())).input(),
      kalmConfig: map['kalmConfig'] == null ? null : (ClusterAddonsConfigKalmConfig.fromMap((map['kalmConfig'] as Map).cast<String, dynamic>())).input(),
      lustreCsiDriverConfig: map['lustreCsiDriverConfig'] == null ? null : (ClusterAddonsConfigLustreCsiDriverConfig.fromMap((map['lustreCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      networkPolicyConfig: map['networkPolicyConfig'] == null ? null : (ClusterAddonsConfigNetworkPolicyConfig.fromMap((map['networkPolicyConfig'] as Map).cast<String, dynamic>())).input(),
      parallelstoreCsiDriverConfig: map['parallelstoreCsiDriverConfig'] == null ? null : (ClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap((map['parallelstoreCsiDriverConfig'] as Map).cast<String, dynamic>())).input(),
      podSnapshotConfig: map['podSnapshotConfig'] == null ? null : (ClusterAddonsConfigPodSnapshotConfig.fromMap((map['podSnapshotConfig'] as Map).cast<String, dynamic>())).input(),
      rayOperatorConfigs: map['rayOperatorConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterAddonsConfigRayOperatorConfig>(map['rayOperatorConfigs'], (value) => ClusterAddonsConfigRayOperatorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statefulHaConfig: map['statefulHaConfig'] == null ? null : (ClusterAddonsConfigStatefulHaConfig.fromMap((map['statefulHaConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

