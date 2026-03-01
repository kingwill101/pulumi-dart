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
  final ClusterAddonsConfigCloudrunConfig? cloudrunConfig;
  /// .
  /// The status of the ConfigConnector addon. It is disabled by default; Set `enabled = true` to enable.
  final ClusterAddonsConfigConfigConnectorConfig? configConnectorConfig;
  /// .
  /// The status of the NodeLocal DNSCache addon. It is disabled by default.
  /// Set `enabled = true` to enable.
  ///
  /// **Enabling/Disabling NodeLocal DNSCache in an existing cluster is a disruptive operation.
  /// All cluster nodes running GKE 1.15 and higher are recreated.**
  final ClusterAddonsConfigDnsCacheConfig? dnsCacheConfig;
  /// .
  /// Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Set `enabled = true` to enable.
  ///
  /// **Note:** The Compute Engine persistent disk CSI Driver is enabled by default on newly created clusters for the following versions: Linux clusters: GKE version 1.18.10-gke.2100 or later, or 1.19.3-gke.2100 or later.
  final ClusterAddonsConfigGcePersistentDiskCsiDriverConfig? gcePersistentDiskCsiDriverConfig;
  /// The status of the Filestore CSI driver addon,
  /// which allows the usage of filestore instance as volumes.
  /// It is disabled by default; set `enabled = true` to enable.
  final ClusterAddonsConfigGcpFilestoreCsiDriverConfig? gcpFilestoreCsiDriverConfig;
  /// The status of the GCSFuse CSI driver addon,
  /// which allows the usage of a gcs bucket as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is enabled by default for Autopilot clusters with version 1.24 or later; set `enabled = true` to enable it explicitly.
  /// See [Enable the Cloud Storage FUSE CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/cloud-storage-fuse-csi-driver#enable) for more information.
  final ClusterAddonsConfigGcsFuseCsiDriverConfig? gcsFuseCsiDriverConfig;
  /// .
  /// The status of the Backup for GKE agent addon. It is disabled by default; Set `enabled = true` to enable.
  final ClusterAddonsConfigGkeBackupAgentConfig? gkeBackupAgentConfig;
  /// The status of the Horizontal Pod Autoscaling
  /// addon, which increases or decreases the number of replica pods a replication controller
  /// has based on the resource usage of the existing pods.
  /// It is enabled by default;
  /// set `disabled = true` to disable.
  final ClusterAddonsConfigHorizontalPodAutoscaling? horizontalPodAutoscaling;
  /// The status of the HTTP (L7) load balancing
  /// controller addon, which makes it easy to set up HTTP load balancers for services in a
  /// cluster. It is enabled by default; set `disabled = true` to disable.
  final ClusterAddonsConfigHttpLoadBalancing? httpLoadBalancing;
  /// .
  /// Structure is documented below.
  final ClusterAddonsConfigIstioConfig? istioConfig;
  /// .
  /// Configuration for the KALM addon, which manages the lifecycle of k8s. It is disabled by default; Set `enabled = true` to enable.
  final ClusterAddonsConfigKalmConfig? kalmConfig;
  /// The status of the Lustre CSI driver addon,
  /// which allows the usage of a Lustre instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is disabled by default for Autopilot clusters; set `enabled = true` to enable.
  /// Lustre CSI Driver Config has optional subfield
  /// `enable_legacy_lustre_port` which allows the Lustre CSI driver to initialize LNet (the virtual networklayer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  /// See [Enable Lustre CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/lustre-csi-driver-new-volume) for more information.
  final ClusterAddonsConfigLustreCsiDriverConfig? lustreCsiDriverConfig;
  /// Whether we should enable the network policy addon
  /// for the master.  This must be enabled in order to enable network policy for the nodes.
  /// To enable this, you must also define a `network_policy` block,
  /// otherwise nothing will happen.
  /// It can only be disabled if the nodes already do not have network policies enabled.
  /// Defaults to disabled; set `disabled = false` to enable.
  final ClusterAddonsConfigNetworkPolicyConfig? networkPolicyConfig;
  /// The status of the Parallelstore CSI driver addon,
  /// which allows the usage of a Parallelstore instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is enabled by default for Autopilot clusters with version 1.29 or later; set `enabled = true` to enable it explicitly.
  /// See [Enable the Parallelstore CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/parallelstore-csi-new-volume#enable) for more information.
  final ClusterAddonsConfigParallelstoreCsiDriverConfig? parallelstoreCsiDriverConfig;
  /// The status of the Pod Snapshot addon. It is disabled by default. Set `enabled = true` to enable.
  ///
  /// This example `addons_config` disables two addons:
  final ClusterAddonsConfigPodSnapshotConfig? podSnapshotConfig;
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
  final List<ClusterAddonsConfigRayOperatorConfig>? rayOperatorConfigs;
  /// .
  /// The status of the Stateful HA addon, which provides automatic configurable failover for stateful applications.
  /// It is disabled by default for Standard clusters. Set `enabled = true` to enable.
  final ClusterAddonsConfigStatefulHaConfig? statefulHaConfig;

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
      'cloudrunConfig': ?cloudrunConfig == null ? null : cloudrunConfig!.toMap(),
      'configConnectorConfig': ?configConnectorConfig == null ? null : configConnectorConfig!.toMap(),
      'dnsCacheConfig': ?dnsCacheConfig == null ? null : dnsCacheConfig!.toMap(),
      'gcePersistentDiskCsiDriverConfig': ?gcePersistentDiskCsiDriverConfig == null ? null : gcePersistentDiskCsiDriverConfig!.toMap(),
      'gcpFilestoreCsiDriverConfig': ?gcpFilestoreCsiDriverConfig == null ? null : gcpFilestoreCsiDriverConfig!.toMap(),
      'gcsFuseCsiDriverConfig': ?gcsFuseCsiDriverConfig == null ? null : gcsFuseCsiDriverConfig!.toMap(),
      'gkeBackupAgentConfig': ?gkeBackupAgentConfig == null ? null : gkeBackupAgentConfig!.toMap(),
      'horizontalPodAutoscaling': ?horizontalPodAutoscaling == null ? null : horizontalPodAutoscaling!.toMap(),
      'httpLoadBalancing': ?httpLoadBalancing == null ? null : httpLoadBalancing!.toMap(),
      'istioConfig': ?istioConfig == null ? null : istioConfig!.toMap(),
      'kalmConfig': ?kalmConfig == null ? null : kalmConfig!.toMap(),
      'lustreCsiDriverConfig': ?lustreCsiDriverConfig == null ? null : lustreCsiDriverConfig!.toMap(),
      'networkPolicyConfig': ?networkPolicyConfig == null ? null : networkPolicyConfig!.toMap(),
      'parallelstoreCsiDriverConfig': ?parallelstoreCsiDriverConfig == null ? null : parallelstoreCsiDriverConfig!.toMap(),
      'podSnapshotConfig': ?podSnapshotConfig == null ? null : podSnapshotConfig!.toMap(),
      'rayOperatorConfigs': ?rayOperatorConfigs == null ? null : pulumi.Input.encodeList<ClusterAddonsConfigRayOperatorConfig, Map<String, dynamic>>(rayOperatorConfigs!, (value) => value.toMap()),
      'statefulHaConfig': ?statefulHaConfig == null ? null : statefulHaConfig!.toMap(),
    };
  }

  factory ClusterAddonsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfig(
      cloudrunConfig: map['cloudrunConfig'] == null ? null : ClusterAddonsConfigCloudrunConfig.fromMap((map['cloudrunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig: map['configConnectorConfig'] == null ? null : ClusterAddonsConfigConfigConnectorConfig.fromMap((map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: map['dnsCacheConfig'] == null ? null : ClusterAddonsConfigDnsCacheConfig.fromMap((map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig: map['gcePersistentDiskCsiDriverConfig'] == null ? null : ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap((map['gcePersistentDiskCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null ? null : ClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap((map['gcpFilestoreCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null ? null : ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap((map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null ? null : ClusterAddonsConfigGkeBackupAgentConfig.fromMap((map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null ? null : ClusterAddonsConfigHorizontalPodAutoscaling.fromMap((map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: map['httpLoadBalancing'] == null ? null : ClusterAddonsConfigHttpLoadBalancing.fromMap((map['httpLoadBalancing'] as Map).cast<String, dynamic>()),
      istioConfig: map['istioConfig'] == null ? null : ClusterAddonsConfigIstioConfig.fromMap((map['istioConfig'] as Map).cast<String, dynamic>()),
      kalmConfig: map['kalmConfig'] == null ? null : ClusterAddonsConfigKalmConfig.fromMap((map['kalmConfig'] as Map).cast<String, dynamic>()),
      lustreCsiDriverConfig: map['lustreCsiDriverConfig'] == null ? null : ClusterAddonsConfigLustreCsiDriverConfig.fromMap((map['lustreCsiDriverConfig'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: map['networkPolicyConfig'] == null ? null : ClusterAddonsConfigNetworkPolicyConfig.fromMap((map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
      parallelstoreCsiDriverConfig: map['parallelstoreCsiDriverConfig'] == null ? null : ClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap((map['parallelstoreCsiDriverConfig'] as Map).cast<String, dynamic>()),
      podSnapshotConfig: map['podSnapshotConfig'] == null ? null : ClusterAddonsConfigPodSnapshotConfig.fromMap((map['podSnapshotConfig'] as Map).cast<String, dynamic>()),
      rayOperatorConfigs: map['rayOperatorConfigs'] == null ? null : pulumi.Input.decodeList<ClusterAddonsConfigRayOperatorConfig>(map['rayOperatorConfigs'], (value) => ClusterAddonsConfigRayOperatorConfig.fromMap((value as Map).cast<String, dynamic>())),
      statefulHaConfig: map['statefulHaConfig'] == null ? null : ClusterAddonsConfigStatefulHaConfig.fromMap((map['statefulHaConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

