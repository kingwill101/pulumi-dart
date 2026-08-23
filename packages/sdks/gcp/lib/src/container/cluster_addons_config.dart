// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config_agent_sandbox_config.dart';
import 'cluster_addons_config_cloudrun_config.dart';
import 'cluster_addons_config_config_connector_config.dart';
import 'cluster_addons_config_dns_cache_config.dart';
import 'cluster_addons_config_gce_persistent_disk_csi_driver_config.dart';
import 'cluster_addons_config_gcp_filestore_csi_driver_config.dart';
import 'cluster_addons_config_gcs_fuse_csi_driver_config.dart';
import 'cluster_addons_config_gke_backup_agent_config.dart';
import 'cluster_addons_config_high_scale_checkpointing_config.dart';
import 'cluster_addons_config_horizontal_pod_autoscaling.dart';
import 'cluster_addons_config_http_load_balancing.dart';
import 'cluster_addons_config_istio_config.dart';
import 'cluster_addons_config_kalm_config.dart';
import 'cluster_addons_config_lustre_csi_driver_config.dart';
import 'cluster_addons_config_network_policy_config.dart';
import 'cluster_addons_config_node_readiness_config.dart';
import 'cluster_addons_config_parallelstore_csi_driver_config.dart';
import 'cluster_addons_config_pod_snapshot_config.dart';
import 'cluster_addons_config_ray_operator_config.dart';
import 'cluster_addons_config_slice_controller_config.dart';
import 'cluster_addons_config_slurm_operator_config.dart';
import 'cluster_addons_config_stateful_ha_config.dart';

class ClusterAddonsConfig {
  /// Configuration for the Agent Sandbox addon. Structure is documented below:
  final pulumi.Input<ClusterAddonsConfigAgentSandboxConfig>? agentSandboxConfig;
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
  /// The status of the High Scale Checkpointing addon, which enables Multi-Tier Checkpointing for Machine Learning workloads. Structure is documented below.
  final pulumi.Input<ClusterAddonsConfigHighScaleCheckpointingConfig>? highScaleCheckpointingConfig;
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
  /// ).
  /// Structure is documented below.
  final pulumi.Input<ClusterAddonsConfigIstioConfig>? istioConfig;
  /// ).
  /// Configuration for the KALM addon, which manages the lifecycle of k8s. It is disabled by default; Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigKalmConfig>? kalmConfig;
  /// The status of the Lustre CSI driver addon,
  /// which allows the usage of a Lustre instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is disabled by default for Autopilot clusters; set `enabled = true` to enable.
  /// See [Enable Lustre CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/lustre-csi-driver-new-volume) for more information.
  /// Lustre CSI Driver Config has optional subfields:
  final pulumi.Input<ClusterAddonsConfigLustreCsiDriverConfig>? lustreCsiDriverConfig;
  /// Whether we should enable the network policy addon
  /// for the master.  This must be enabled in order to enable network policy for the nodes.
  /// To enable this, you must also define a `networkPolicy` block,
  /// otherwise nothing will happen.
  /// It can only be disabled if the nodes already do not have network policies enabled.
  /// Defaults to disabled; set `disabled = false` to enable.
  final pulumi.Input<ClusterAddonsConfigNetworkPolicyConfig>? networkPolicyConfig;
  /// The status of the Node Readiness Controller addon. It is disabled by default. Set `enabled = true` to enable.
  /// Structure is documented below.
  ///
  /// This example `addonsConfig` disables two addons:
  final pulumi.Input<ClusterAddonsConfigNodeReadinessConfig>? nodeReadinessConfig;
  /// The status of the Parallelstore CSI driver addon,
  /// which allows the usage of a Parallelstore instances as volumes.
  /// It is disabled by default for Standard clusters; set `enabled = true` to enable.
  /// It is enabled by default for Autopilot clusters with version 1.29 or later; set `enabled = true` to enable it explicitly.
  /// See [Enable the Parallelstore CSI driver](https://cloud.google.com/kubernetes-engine/docs/how-to/persistent-volumes/parallelstore-csi-new-volume#enable) for more information.
  final pulumi.Input<ClusterAddonsConfigParallelstoreCsiDriverConfig>? parallelstoreCsiDriverConfig;
  /// The status of the Pod Snapshot addon. It is disabled by default. Set `enabled = true` to enable.
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
  /// The status of the slice controller addon.
  /// It is disabled by default. Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigSliceControllerConfig>? sliceControllerConfig;
  /// The status of the Slurm Operator addon,
  /// which creates slurm related CRDs and KCP pods to manage them.
  /// Defaults to disabled for Standard clusters; set `enabled = true` to enable.
  /// It can not be enabled for Autopilot clusters.
  final pulumi.Input<ClusterAddonsConfigSlurmOperatorConfig>? slurmOperatorConfig;
  /// .
  /// The status of the Stateful HA addon, which provides automatic configurable failover for stateful applications.
  /// It is disabled by default for Standard clusters. Set `enabled = true` to enable.
  final pulumi.Input<ClusterAddonsConfigStatefulHaConfig>? statefulHaConfig;

  /// Creates a new [ClusterAddonsConfig].
  /// [agentSandboxConfig] Configuration for the Agent Sandbox addon. Structure is documented below:
  /// [cloudrunConfig] . Structure is documented below.
  /// [configConnectorConfig] .
  /// [dnsCacheConfig] .
  /// [gcePersistentDiskCsiDriverConfig] .
  /// [gcpFilestoreCsiDriverConfig] The status of the Filestore CSI driver addon,
  /// [gcsFuseCsiDriverConfig] The status of the GCSFuse CSI driver addon,
  /// [gkeBackupAgentConfig] .
  /// [highScaleCheckpointingConfig] The status of the High Scale Checkpointing addon, which enables Multi-Tier Checkpointing for Machine Learning workloads. Structure is documented below.
  /// [horizontalPodAutoscaling] The status of the Horizontal Pod Autoscaling
  /// [httpLoadBalancing] The status of the HTTP (L7) load balancing
  /// [istioConfig] ).
  /// [kalmConfig] ).
  /// [lustreCsiDriverConfig] The status of the Lustre CSI driver addon,
  /// [networkPolicyConfig] Whether we should enable the network policy addon
  /// [nodeReadinessConfig] The status of the Node Readiness Controller addon. It is disabled by default. Set `enabled = true` to enable.
  /// [parallelstoreCsiDriverConfig] The status of the Parallelstore CSI driver addon,
  /// [podSnapshotConfig] The status of the Pod Snapshot addon. It is disabled by default. Set `enabled = true` to enable.
  /// [rayOperatorConfigs] . The status of the [Ray Operator
  /// [sliceControllerConfig] .
  /// [slurmOperatorConfig] The status of the Slurm Operator addon,
  /// [statefulHaConfig] .
  const ClusterAddonsConfig({
    this.agentSandboxConfig,
    this.cloudrunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.highScaleCheckpointingConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.istioConfig,
    this.kalmConfig,
    this.lustreCsiDriverConfig,
    this.networkPolicyConfig,
    this.nodeReadinessConfig,
    this.parallelstoreCsiDriverConfig,
    this.podSnapshotConfig,
    this.rayOperatorConfigs,
    this.sliceControllerConfig,
    this.slurmOperatorConfig,
    this.statefulHaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSandboxConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigAgentSandboxConfig, Map<String, dynamic>>(agentSandboxConfig, (value) => value.toMap()),
      'cloudrunConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigCloudrunConfig, Map<String, dynamic>>(cloudrunConfig, (value) => value.toMap()),
      'configConnectorConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigConfigConnectorConfig, Map<String, dynamic>>(configConnectorConfig, (value) => value.toMap()),
      'dnsCacheConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigDnsCacheConfig, Map<String, dynamic>>(dnsCacheConfig, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcePersistentDiskCsiDriverConfig, Map<String, dynamic>>(gcePersistentDiskCsiDriverConfig, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcpFilestoreCsiDriverConfig, Map<String, dynamic>>(gcpFilestoreCsiDriverConfig, (value) => value.toMap()),
      'gcsFuseCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGcsFuseCsiDriverConfig, Map<String, dynamic>>(gcsFuseCsiDriverConfig, (value) => value.toMap()),
      'gkeBackupAgentConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigGkeBackupAgentConfig, Map<String, dynamic>>(gkeBackupAgentConfig, (value) => value.toMap()),
      'highScaleCheckpointingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigHighScaleCheckpointingConfig, Map<String, dynamic>>(highScaleCheckpointingConfig, (value) => value.toMap()),
      'horizontalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigHorizontalPodAutoscaling, Map<String, dynamic>>(horizontalPodAutoscaling, (value) => value.toMap()),
      'httpLoadBalancing': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigHttpLoadBalancing, Map<String, dynamic>>(httpLoadBalancing, (value) => value.toMap()),
      'istioConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigIstioConfig, Map<String, dynamic>>(istioConfig, (value) => value.toMap()),
      'kalmConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigKalmConfig, Map<String, dynamic>>(kalmConfig, (value) => value.toMap()),
      'lustreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigLustreCsiDriverConfig, Map<String, dynamic>>(lustreCsiDriverConfig, (value) => value.toMap()),
      'networkPolicyConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigNetworkPolicyConfig, Map<String, dynamic>>(networkPolicyConfig, (value) => value.toMap()),
      'nodeReadinessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigNodeReadinessConfig, Map<String, dynamic>>(nodeReadinessConfig, (value) => value.toMap()),
      'parallelstoreCsiDriverConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigParallelstoreCsiDriverConfig, Map<String, dynamic>>(parallelstoreCsiDriverConfig, (value) => value.toMap()),
      'podSnapshotConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigPodSnapshotConfig, Map<String, dynamic>>(podSnapshotConfig, (value) => value.toMap()),
      'rayOperatorConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterAddonsConfigRayOperatorConfig>, List<Map<String, dynamic>>>(rayOperatorConfigs, (value) => pulumi.Input.encodeList<ClusterAddonsConfigRayOperatorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sliceControllerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigSliceControllerConfig, Map<String, dynamic>>(sliceControllerConfig, (value) => value.toMap()),
      'slurmOperatorConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigSlurmOperatorConfig, Map<String, dynamic>>(slurmOperatorConfig, (value) => value.toMap()),
      'statefulHaConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfigStatefulHaConfig, Map<String, dynamic>>(statefulHaConfig, (value) => value.toMap()),
    };
  }

  factory ClusterAddonsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfig(
      agentSandboxConfig: (() { final guardedValue = map['agentSandboxConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigAgentSandboxConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudrunConfig: (() { final guardedValue = map['cloudrunConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigCloudrunConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configConnectorConfig: (() { final guardedValue = map['configConnectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigConfigConnectorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsCacheConfig: (() { final guardedValue = map['dnsCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigDnsCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcePersistentDiskCsiDriverConfig: (() { final guardedValue = map['gcePersistentDiskCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcpFilestoreCsiDriverConfig: (() { final guardedValue = map['gcpFilestoreCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsFuseCsiDriverConfig: (() { final guardedValue = map['gcsFuseCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeBackupAgentConfig: (() { final guardedValue = map['gkeBackupAgentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigGkeBackupAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      highScaleCheckpointingConfig: (() { final guardedValue = map['highScaleCheckpointingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigHighScaleCheckpointingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      horizontalPodAutoscaling: (() { final guardedValue = map['horizontalPodAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigHorizontalPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpLoadBalancing: (() { final guardedValue = map['httpLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigHttpLoadBalancing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      istioConfig: (() { final guardedValue = map['istioConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigIstioConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kalmConfig: (() { final guardedValue = map['kalmConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigKalmConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lustreCsiDriverConfig: (() { final guardedValue = map['lustreCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigLustreCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicyConfig: (() { final guardedValue = map['networkPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigNetworkPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeReadinessConfig: (() { final guardedValue = map['nodeReadinessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigNodeReadinessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parallelstoreCsiDriverConfig: (() { final guardedValue = map['parallelstoreCsiDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podSnapshotConfig: (() { final guardedValue = map['podSnapshotConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigPodSnapshotConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rayOperatorConfigs: (() { final guardedValue = map['rayOperatorConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAddonsConfigRayOperatorConfig>(guardedValue, (value) => ClusterAddonsConfigRayOperatorConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sliceControllerConfig: (() { final guardedValue = map['sliceControllerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigSliceControllerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slurmOperatorConfig: (() { final guardedValue = map['slurmOperatorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigSlurmOperatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulHaConfig: (() { final guardedValue = map['statefulHaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAddonsConfigStatefulHaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
