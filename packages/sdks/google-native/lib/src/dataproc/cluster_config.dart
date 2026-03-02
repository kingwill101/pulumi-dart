// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config.dart';
import 'auxiliary_node_group.dart';
import 'dataproc_metric_config.dart';
import 'encryption_config.dart';
import 'endpoint_config.dart';
import 'gce_cluster_config.dart';
import 'gke_cluster_config.dart';
import 'instance_group_config.dart';
import 'lifecycle_config.dart';
import 'metastore_config.dart';
import 'node_initialization_action.dart';
import 'security_config.dart';
import 'software_config.dart';

/// The cluster config.
class ClusterConfig {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final pulumi.Input<AutoscalingConfig>? autoscalingConfig;
  /// Optional. The node group settings.
  final pulumi.Input<List<AuxiliaryNodeGroup>>? auxiliaryNodeGroups;
  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String>? configBucket;
  /// Optional. The config for Dataproc metrics.
  final pulumi.Input<DataprocMetricConfig>? dataprocMetricConfig;
  /// Optional. Encryption settings for the cluster.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Optional. Port/endpoint configuration for this cluster
  final pulumi.Input<EndpointConfig>? endpointConfig;
  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final pulumi.Input<GceClusterConfig>? gceClusterConfig;
  /// Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final pulumi.Input<GkeClusterConfig>? gkeClusterConfig;
  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final pulumi.Input<List<NodeInitializationAction>>? initializationActions;
  /// Optional. Lifecycle setting for the cluster.
  final pulumi.Input<LifecycleConfig>? lifecycleConfig;
  /// Optional. The Compute Engine config settings for the cluster's master instance.
  final pulumi.Input<InstanceGroupConfig>? masterConfig;
  /// Optional. Metastore configuration.
  final pulumi.Input<MetastoreConfig>? metastoreConfig;
  /// Optional. The Compute Engine config settings for a cluster's secondary worker instances
  final pulumi.Input<InstanceGroupConfig>? secondaryWorkerConfig;
  /// Optional. Security settings for the cluster.
  final pulumi.Input<SecurityConfig>? securityConfig;
  /// Optional. The config settings for cluster software.
  final pulumi.Input<SoftwareConfig>? softwareConfig;
  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String>? tempBucket;
  /// Optional. The Compute Engine config settings for the cluster's worker instances.
  final pulumi.Input<InstanceGroupConfig>? workerConfig;

  /// Creates a new [ClusterConfig].
  /// [autoscalingConfig] Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  /// [auxiliaryNodeGroups] Optional. The node group settings.
  /// [configBucket] Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  /// [dataprocMetricConfig] Optional. The config for Dataproc metrics.
  /// [encryptionConfig] Optional. Encryption settings for the cluster.
  /// [endpointConfig] Optional. Port/endpoint configuration for this cluster
  /// [gceClusterConfig] Optional. The shared Compute Engine config settings for all instances in a cluster.
  /// [gkeClusterConfig] Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  /// [initializationActions] Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Optional. Lifecycle setting for the cluster.
  /// [masterConfig] Optional. The Compute Engine config settings for the cluster's master instance.
  /// [metastoreConfig] Optional. Metastore configuration.
  /// [secondaryWorkerConfig] Optional. The Compute Engine config settings for a cluster's secondary worker instances
  /// [securityConfig] Optional. Security settings for the cluster.
  /// [softwareConfig] Optional. The config settings for cluster software.
  /// [tempBucket] Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  /// [workerConfig] Optional. The Compute Engine config settings for the cluster's worker instances.
  ClusterConfig({
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.configBucket,
    this.dataprocMetricConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.gkeClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.secondaryWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.tempBucket,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<AutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'auxiliaryNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<AuxiliaryNodeGroup>, List<Map<String, dynamic>>>(auxiliaryNodeGroups, (value) => pulumi.Input.encodeList<AuxiliaryNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configBucket': ?configBucket,
      'dataprocMetricConfig': ?pulumi.Input.mapOptionalInputValue<DataprocMetricConfig, Map<String, dynamic>>(dataprocMetricConfig, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointConfig': ?pulumi.Input.mapOptionalInputValue<EndpointConfig, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig': ?pulumi.Input.mapOptionalInputValue<GceClusterConfig, Map<String, dynamic>>(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig': ?pulumi.Input.mapOptionalInputValue<GkeClusterConfig, Map<String, dynamic>>(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions': ?pulumi.Input.mapOptionalInputValue<List<NodeInitializationAction>, List<Map<String, dynamic>>>(initializationActions, (value) => pulumi.Input.encodeList<NodeInitializationAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfig': ?pulumi.Input.mapOptionalInputValue<LifecycleConfig, Map<String, dynamic>>(lifecycleConfig, (value) => value.toMap()),
      'masterConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfig, Map<String, dynamic>>(masterConfig, (value) => value.toMap()),
      'metastoreConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreConfig, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<SecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<SoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'tempBucket': ?tempBucket,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      autoscalingConfig: map['autoscalingConfig'] == null ? null : (AutoscalingConfig.fromMap((map['autoscalingConfig'] as Map).cast<String, dynamic>())).input(),
      auxiliaryNodeGroups: map['auxiliaryNodeGroups'] == null ? null : (pulumi.Input.decodeList<AuxiliaryNodeGroup>(map['auxiliaryNodeGroups'], (value) => AuxiliaryNodeGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configBucket: map['configBucket'] == null ? null : (map['configBucket'] as String).input(),
      dataprocMetricConfig: map['dataprocMetricConfig'] == null ? null : (DataprocMetricConfig.fromMap((map['dataprocMetricConfig'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      endpointConfig: map['endpointConfig'] == null ? null : (EndpointConfig.fromMap((map['endpointConfig'] as Map).cast<String, dynamic>())).input(),
      gceClusterConfig: map['gceClusterConfig'] == null ? null : (GceClusterConfig.fromMap((map['gceClusterConfig'] as Map).cast<String, dynamic>())).input(),
      gkeClusterConfig: map['gkeClusterConfig'] == null ? null : (GkeClusterConfig.fromMap((map['gkeClusterConfig'] as Map).cast<String, dynamic>())).input(),
      initializationActions: map['initializationActions'] == null ? null : (pulumi.Input.decodeList<NodeInitializationAction>(map['initializationActions'], (value) => NodeInitializationAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lifecycleConfig: map['lifecycleConfig'] == null ? null : (LifecycleConfig.fromMap((map['lifecycleConfig'] as Map).cast<String, dynamic>())).input(),
      masterConfig: map['masterConfig'] == null ? null : (InstanceGroupConfig.fromMap((map['masterConfig'] as Map).cast<String, dynamic>())).input(),
      metastoreConfig: map['metastoreConfig'] == null ? null : (MetastoreConfig.fromMap((map['metastoreConfig'] as Map).cast<String, dynamic>())).input(),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : (InstanceGroupConfig.fromMap((map['secondaryWorkerConfig'] as Map).cast<String, dynamic>())).input(),
      securityConfig: map['securityConfig'] == null ? null : (SecurityConfig.fromMap((map['securityConfig'] as Map).cast<String, dynamic>())).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (SoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())).input(),
      tempBucket: map['tempBucket'] == null ? null : (map['tempBucket'] as String).input(),
      workerConfig: map['workerConfig'] == null ? null : (InstanceGroupConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

