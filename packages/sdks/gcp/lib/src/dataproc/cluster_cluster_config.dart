// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_autoscaling_config.dart';
import 'cluster_cluster_config_auxiliary_node_group.dart';
import 'cluster_cluster_config_dataproc_metric_config.dart';
import 'cluster_cluster_config_encryption_config.dart';
import 'cluster_cluster_config_endpoint_config.dart';
import 'cluster_cluster_config_gce_cluster_config.dart';
import 'cluster_cluster_config_initialization_action.dart';
import 'cluster_cluster_config_lifecycle_config.dart';
import 'cluster_cluster_config_master_config.dart';
import 'cluster_cluster_config_metastore_config.dart';
import 'cluster_cluster_config_preemptible_worker_config.dart';
import 'cluster_cluster_config_security_config.dart';
import 'cluster_cluster_config_software_config.dart';
import 'cluster_cluster_config_worker_config.dart';

class ClusterClusterConfig {
  /// The autoscaling policy config associated with the cluster.
  /// Note that once set, if `autoscaling_config` is the only field set in `cluster_config`, it can
  /// only be removed by setting `policy_uri = ""`, rather than removing the whole block.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigAutoscalingConfig>? autoscalingConfig;
  /// A Dataproc NodeGroup resource is a group of Dataproc cluster nodes that execute an assigned role.
  /// Structure defined below.
  final pulumi.Input<List<ClusterClusterConfigAuxiliaryNodeGroup>>? auxiliaryNodeGroups;
  /// The name of the cloud storage bucket ultimately used to house the staging data
  /// for the cluster. If `staging_bucket` is specified, it will contain this value, otherwise
  /// it will be the auto generated name.
  final pulumi.Input<String>? bucket;
  /// The tier of the cluster.
  final pulumi.Input<String>? clusterTier;
  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigDataprocMetricConfig>? dataprocMetricConfig;
  /// The Customer managed encryption keys settings for the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigEncryptionConfig>? encryptionConfig;
  /// The config settings for port access on the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigEndpointConfig>? endpointConfig;
  /// Common config settings for resources of Google Compute Engine cluster
  /// instances, applicable to all instances in the cluster. Structure defined below.
  final pulumi.Input<ClusterClusterConfigGceClusterConfig>? gceClusterConfig;
  /// Commands to execute on each node after config is completed.
  /// You can specify multiple versions of these. Structure defined below.
  final pulumi.Input<List<ClusterClusterConfigInitializationAction>>? initializationActions;
  /// The settings for auto deletion cluster schedule.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigLifecycleConfig>? lifecycleConfig;
  /// The Google Compute Engine config settings for the master instances
  /// in a cluster. Structure defined below.
  final pulumi.Input<ClusterClusterConfigMasterConfig>? masterConfig;
  /// The config setting for metastore service with the cluster.
  /// Structure defined below.
  /// - - -
  final pulumi.Input<ClusterClusterConfigMetastoreConfig>? metastoreConfig;
  /// The Google Compute Engine config settings for the additional
  /// instances in a cluster. Structure defined below.
  /// * **NOTE** : `preemptible_worker_config` is
  /// an alias for the api's [secondaryWorkerConfig](https://cloud.google.com/dataproc/docs/reference/rest/v1/ClusterConfig#InstanceGroupConfig). The name doesn't necessarily mean it is preemptible and is named as
  /// such for legacy/compatibility reasons.
  final pulumi.Input<ClusterClusterConfigPreemptibleWorkerConfig>? preemptibleWorkerConfig;
  /// Security related configuration. Structure defined below.
  final pulumi.Input<ClusterClusterConfigSecurityConfig>? securityConfig;
  /// The config settings for software inside the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfigSoftwareConfig>? softwareConfig;
  /// The Cloud Storage staging bucket used to stage files,
  /// such as Hadoop jars, between client machines and the cluster.
  /// Note: If you don't explicitly specify a `staging_bucket`
  /// then GCP will auto create / assign one for you. However, you are not guaranteed
  /// an auto generated bucket which is solely dedicated to your cluster; it may be shared
  /// with other clusters in the same region/zone also choosing to use the auto generation
  /// option.
  final pulumi.Input<String>? stagingBucket;
  /// The Cloud Storage temp bucket used to store ephemeral cluster
  /// and jobs data, such as Spark and MapReduce history files.
  /// Note: If you don't explicitly specify a `temp_bucket` then GCP will auto create / assign one for you.
  final pulumi.Input<String>? tempBucket;
  /// The Google Compute Engine config settings for the worker instances
  /// in a cluster. Structure defined below.
  final pulumi.Input<ClusterClusterConfigWorkerConfig>? workerConfig;

  /// Creates a new [ClusterClusterConfig].
  /// [autoscalingConfig] The autoscaling policy config associated with the cluster.
  /// [auxiliaryNodeGroups] A Dataproc NodeGroup resource is a group of Dataproc cluster nodes that execute an assigned role.
  /// [bucket] The name of the cloud storage bucket ultimately used to house the staging data
  /// [clusterTier] The tier of the cluster.
  /// [dataprocMetricConfig] The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  /// [encryptionConfig] The Customer managed encryption keys settings for the cluster.
  /// [endpointConfig] The config settings for port access on the cluster.
  /// [gceClusterConfig] Common config settings for resources of Google Compute Engine cluster
  /// [initializationActions] Commands to execute on each node after config is completed.
  /// [lifecycleConfig] The settings for auto deletion cluster schedule.
  /// [masterConfig] The Google Compute Engine config settings for the master instances
  /// [metastoreConfig] The config setting for metastore service with the cluster.
  /// [preemptibleWorkerConfig] The Google Compute Engine config settings for the additional
  /// [securityConfig] Security related configuration. Structure defined below.
  /// [softwareConfig] The config settings for software inside the cluster.
  /// [stagingBucket] The Cloud Storage staging bucket used to stage files,
  /// [tempBucket] The Cloud Storage temp bucket used to store ephemeral cluster
  /// [workerConfig] The Google Compute Engine config settings for the worker instances
  ClusterClusterConfig({
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.bucket,
    this.clusterTier,
    this.dataprocMetricConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.preemptibleWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.stagingBucket,
    this.tempBucket,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'auxiliaryNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigAuxiliaryNodeGroup>, List<Map<String, dynamic>>>(auxiliaryNodeGroups, (value) => pulumi.Input.encodeList<ClusterClusterConfigAuxiliaryNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': ?bucket,
      'clusterTier': ?clusterTier,
      'dataprocMetricConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigDataprocMetricConfig, Map<String, dynamic>>(dataprocMetricConfig, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigEndpointConfig, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigGceClusterConfig, Map<String, dynamic>>(gceClusterConfig, (value) => value.toMap()),
      'initializationActions': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigInitializationAction>, List<Map<String, dynamic>>>(initializationActions, (value) => pulumi.Input.encodeList<ClusterClusterConfigInitializationAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigLifecycleConfig, Map<String, dynamic>>(lifecycleConfig, (value) => value.toMap()),
      'masterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigMasterConfig, Map<String, dynamic>>(masterConfig, (value) => value.toMap()),
      'metastoreConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigMetastoreConfig, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'preemptibleWorkerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigPreemptibleWorkerConfig, Map<String, dynamic>>(preemptibleWorkerConfig, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'stagingBucket': ?stagingBucket,
      'tempBucket': ?tempBucket,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfig(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      auxiliaryNodeGroups: (() { final guardedValue = map['auxiliaryNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigAuxiliaryNodeGroup>(guardedValue, (value) => ClusterClusterConfigAuxiliaryNodeGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterTier: (() { final guardedValue = map['clusterTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataprocMetricConfig: (() { final guardedValue = map['dataprocMetricConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigDataprocMetricConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointConfig: (() { final guardedValue = map['endpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gceClusterConfig: (() { final guardedValue = map['gceClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigGceClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initializationActions: (() { final guardedValue = map['initializationActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigInitializationAction>(guardedValue, (value) => ClusterClusterConfigInitializationAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleConfig: (() { final guardedValue = map['lifecycleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigLifecycleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterConfig: (() { final guardedValue = map['masterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigMasterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metastoreConfig: (() { final guardedValue = map['metastoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigMetastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preemptibleWorkerConfig: (() { final guardedValue = map['preemptibleWorkerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigPreemptibleWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softwareConfig: (() { final guardedValue = map['softwareConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stagingBucket: (() { final guardedValue = map['stagingBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tempBucket: (() { final guardedValue = map['tempBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

