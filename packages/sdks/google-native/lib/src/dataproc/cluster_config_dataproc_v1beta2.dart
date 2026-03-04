// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_dataproc_v1beta2.dart';
import 'encryption_config_dataproc_v1beta2.dart';
import 'endpoint_config_dataproc_v1beta2.dart';
import 'gce_cluster_config_dataproc_v1beta2.dart';
import 'gke_cluster_config_dataproc_v1beta2.dart';
import 'instance_group_config_dataproc_v1beta2.dart';
import 'lifecycle_config_dataproc_v1beta2.dart';
import 'metastore_config_dataproc_v1beta2.dart';
import 'node_initialization_action_dataproc_v1beta2.dart';
import 'security_config_dataproc_v1beta2.dart';
import 'software_config_dataproc_v1beta2.dart';

/// The cluster config.
class ClusterConfigDataprocV1beta2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final pulumi.Input<AutoscalingConfigDataprocV1beta2>? autoscalingConfig;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final pulumi.Input<String>? configBucket;

  /// Optional. Encryption settings for the cluster.
  final pulumi.Input<EncryptionConfigDataprocV1beta2>? encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final pulumi.Input<EndpointConfigDataprocV1beta2>? endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final pulumi.Input<GceClusterConfigDataprocV1beta2>? gceClusterConfig;

  /// Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final pulumi.Input<GkeClusterConfigDataprocV1beta2>? gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final pulumi.Input<List<NodeInitializationActionDataprocV1beta2>>?
  initializationActions;

  /// Optional. The config setting for auto delete cluster schedule.
  final pulumi.Input<LifecycleConfigDataprocV1beta2>? lifecycleConfig;

  /// Optional. The Compute Engine config settings for the master instance in a cluster.
  final pulumi.Input<InstanceGroupConfigDataprocV1beta2>? masterConfig;

  /// Optional. Metastore configuration.
  final pulumi.Input<MetastoreConfigDataprocV1beta2>? metastoreConfig;

  /// Optional. The Compute Engine config settings for additional worker instances in a cluster.
  final pulumi.Input<InstanceGroupConfigDataprocV1beta2>? secondaryWorkerConfig;

  /// Optional. Security related configuration.
  final pulumi.Input<SecurityConfigDataprocV1beta2>? securityConfig;

  /// Optional. The config settings for software inside the cluster.
  final pulumi.Input<SoftwareConfigDataprocV1beta2>? softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final pulumi.Input<String>? tempBucket;

  /// Optional. The Compute Engine config settings for worker instances in a cluster.
  final pulumi.Input<InstanceGroupConfigDataprocV1beta2>? workerConfig;

  /// Creates a new [ClusterConfigDataprocV1beta2].
  /// [autoscalingConfig] Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  /// [configBucket] Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  /// [encryptionConfig] Optional. Encryption settings for the cluster.
  /// [endpointConfig] Optional. Port/endpoint configuration for this cluster
  /// [gceClusterConfig] Optional. The shared Compute Engine config settings for all instances in a cluster.
  /// [gkeClusterConfig] Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  /// [initializationActions] Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Optional. The config setting for auto delete cluster schedule.
  /// [masterConfig] Optional. The Compute Engine config settings for the master instance in a cluster.
  /// [metastoreConfig] Optional. Metastore configuration.
  /// [secondaryWorkerConfig] Optional. The Compute Engine config settings for additional worker instances in a cluster.
  /// [securityConfig] Optional. Security related configuration.
  /// [softwareConfig] Optional. The config settings for software inside the cluster.
  /// [tempBucket] Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  /// [workerConfig] Optional. The Compute Engine config settings for worker instances in a cluster.
  ClusterConfigDataprocV1beta2({
    this.autoscalingConfig,
    this.configBucket,
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
            AutoscalingConfigDataprocV1beta2,
            Map<String, dynamic>
          >(autoscalingConfig, (value) => value.toMap()),
      'configBucket': ?configBucket,
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfigDataprocV1beta2,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'endpointConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointConfigDataprocV1beta2,
            Map<String, dynamic>
          >(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GceClusterConfigDataprocV1beta2,
            Map<String, dynamic>
          >(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GkeClusterConfigDataprocV1beta2,
            Map<String, dynamic>
          >(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeInitializationActionDataprocV1beta2>,
            List<Map<String, dynamic>>
          >(
            initializationActions,
            (value) =>
                pulumi.Input.encodeList<
                  NodeInitializationActionDataprocV1beta2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lifecycleConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LifecycleConfigDataprocV1beta2,
            Map<String, dynamic>
          >(lifecycleConfig, (value) => value.toMap()),
      'masterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfigDataprocV1beta2,
            Map<String, dynamic>
          >(masterConfig, (value) => value.toMap()),
      'metastoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MetastoreConfigDataprocV1beta2,
            Map<String, dynamic>
          >(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfigDataprocV1beta2,
            Map<String, dynamic>
          >(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityConfigDataprocV1beta2,
            Map<String, dynamic>
          >(securityConfig, (value) => value.toMap()),
      'softwareConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareConfigDataprocV1beta2,
            Map<String, dynamic>
          >(softwareConfig, (value) => value.toMap()),
      'tempBucket': ?tempBucket,
      'workerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfigDataprocV1beta2,
            Map<String, dynamic>
          >(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ClusterConfigDataprocV1beta2(
      autoscalingConfig: (() {
        final guardedValue = map['autoscalingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      configBucket: (() {
        final guardedValue = map['configBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpointConfig: (() {
        final guardedValue = map['endpointConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gceClusterConfig: (() {
        final guardedValue = map['gceClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GceClusterConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gkeClusterConfig: (() {
        final guardedValue = map['gkeClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GkeClusterConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      initializationActions: (() {
        final guardedValue = map['initializationActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeInitializationActionDataprocV1beta2>(
            guardedValue,
            (value) => NodeInitializationActionDataprocV1beta2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lifecycleConfig: (() {
        final guardedValue = map['lifecycleConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LifecycleConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      masterConfig: (() {
        final guardedValue = map['masterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGroupConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metastoreConfig: (() {
        final guardedValue = map['metastoreConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetastoreConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryWorkerConfig: (() {
        final guardedValue = map['secondaryWorkerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceGroupConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityConfig: (() {
        final guardedValue = map['securityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      softwareConfig: (() {
        final guardedValue = map['softwareConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
          InstanceGroupConfigDataprocV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
