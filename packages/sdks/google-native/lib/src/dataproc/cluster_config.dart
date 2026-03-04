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
      'autoscalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingConfig,
            Map<String, dynamic>
          >(autoscalingConfig, (value) => value.toMap()),
      'auxiliaryNodeGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuxiliaryNodeGroup>,
            List<Map<String, dynamic>>
          >(
            auxiliaryNodeGroups,
            (value) =>
                pulumi.Input.encodeList<
                  AuxiliaryNodeGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'configBucket': ?configBucket,
      'dataprocMetricConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DataprocMetricConfig,
            Map<String, dynamic>
          >(dataprocMetricConfig, (value) => value.toMap()),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'endpointConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointConfig,
            Map<String, dynamic>
          >(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GceClusterConfig,
            Map<String, dynamic>
          >(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GkeClusterConfig,
            Map<String, dynamic>
          >(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeInitializationAction>,
            List<Map<String, dynamic>>
          >(
            initializationActions,
            (value) =>
                pulumi.Input.encodeList<
                  NodeInitializationAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lifecycleConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LifecycleConfig,
            Map<String, dynamic>
          >(lifecycleConfig, (value) => value.toMap()),
      'masterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfig,
            Map<String, dynamic>
          >(masterConfig, (value) => value.toMap()),
      'metastoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MetastoreConfig,
            Map<String, dynamic>
          >(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfig,
            Map<String, dynamic>
          >(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityConfig,
            Map<String, dynamic>
          >(securityConfig, (value) => value.toMap()),
      'softwareConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareConfig,
            Map<String, dynamic>
          >(softwareConfig, (value) => value.toMap()),
      'tempBucket': ?tempBucket,
      'workerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfig,
            Map<String, dynamic>
          >(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterConfig(
      autoscalingConfig: (() {
        final guardedValue = map['autoscalingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      auxiliaryNodeGroups: (() {
        final guardedValue = map['auxiliaryNodeGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuxiliaryNodeGroup>(
            guardedValue,
            (value) => AuxiliaryNodeGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      configBucket: (() {
        final guardedValue = map['configBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataprocMetricConfig: (() {
        final guardedValue = map['dataprocMetricConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataprocMetricConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpointConfig: (() {
        final guardedValue = map['endpointConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      gceClusterConfig: (() {
        final guardedValue = map['gceClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GceClusterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gkeClusterConfig: (() {
        final guardedValue = map['gkeClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GkeClusterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      initializationActions: (() {
        final guardedValue = map['initializationActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeInitializationAction>(
            guardedValue,
            (value) => NodeInitializationAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lifecycleConfig: (() {
        final guardedValue = map['lifecycleConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LifecycleConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      masterConfig: (() {
        final guardedValue = map['masterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGroupConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metastoreConfig: (() {
        final guardedValue = map['metastoreConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetastoreConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryWorkerConfig: (() {
        final guardedValue = map['secondaryWorkerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGroupConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityConfig: (() {
        final guardedValue = map['securityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      softwareConfig: (() {
        final guardedValue = map['softwareConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tempBucket: (() {
        final guardedValue = map['tempBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerConfig: (() {
        final guardedValue = map['workerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGroupConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
