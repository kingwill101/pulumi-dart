// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_response_dataproc_v1beta2.dart';
import 'encryption_config_response_dataproc_v1beta2.dart';
import 'endpoint_config_response_dataproc_v1beta2.dart';
import 'gce_cluster_config_response_dataproc_v1beta2.dart';
import 'gke_cluster_config_response_dataproc_v1beta2.dart';
import 'instance_group_config_response_dataproc_v1beta2.dart';
import 'lifecycle_config_response_dataproc_v1beta2.dart';
import 'metastore_config_response_dataproc_v1beta2.dart';
import 'node_initialization_action_response_dataproc_v1beta2.dart';
import 'security_config_response_dataproc_v1beta2.dart';
import 'software_config_response_dataproc_v1beta2.dart';

/// The cluster config.
class ClusterConfigResponseDataprocV1beta2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final pulumi.Input<AutoscalingConfigResponseDataprocV1beta2>
  autoscalingConfig;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final pulumi.Input<String> configBucket;

  /// Optional. Encryption settings for the cluster.
  final pulumi.Input<EncryptionConfigResponseDataprocV1beta2> encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final pulumi.Input<EndpointConfigResponseDataprocV1beta2> endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final pulumi.Input<GceClusterConfigResponseDataprocV1beta2> gceClusterConfig;

  /// Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final pulumi.Input<GkeClusterConfigResponseDataprocV1beta2> gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final pulumi.Input<List<NodeInitializationActionResponseDataprocV1beta2>>
  initializationActions;

  /// Optional. The config setting for auto delete cluster schedule.
  final pulumi.Input<LifecycleConfigResponseDataprocV1beta2> lifecycleConfig;

  /// Optional. The Compute Engine config settings for the master instance in a cluster.
  final pulumi.Input<InstanceGroupConfigResponseDataprocV1beta2> masterConfig;

  /// Optional. Metastore configuration.
  final pulumi.Input<MetastoreConfigResponseDataprocV1beta2> metastoreConfig;

  /// Optional. The Compute Engine config settings for additional worker instances in a cluster.
  final pulumi.Input<InstanceGroupConfigResponseDataprocV1beta2>
  secondaryWorkerConfig;

  /// Optional. Security related configuration.
  final pulumi.Input<SecurityConfigResponseDataprocV1beta2> securityConfig;

  /// Optional. The config settings for software inside the cluster.
  final pulumi.Input<SoftwareConfigResponseDataprocV1beta2> softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final pulumi.Input<String> tempBucket;

  /// Optional. The Compute Engine config settings for worker instances in a cluster.
  final pulumi.Input<InstanceGroupConfigResponseDataprocV1beta2> workerConfig;

  /// Creates a new [ClusterConfigResponseDataprocV1beta2].
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
  ClusterConfigResponseDataprocV1beta2({
    required this.autoscalingConfig,
    required this.configBucket,
    required this.encryptionConfig,
    required this.endpointConfig,
    required this.gceClusterConfig,
    required this.gkeClusterConfig,
    required this.initializationActions,
    required this.lifecycleConfig,
    required this.masterConfig,
    required this.metastoreConfig,
    required this.secondaryWorkerConfig,
    required this.securityConfig,
    required this.softwareConfig,
    required this.tempBucket,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig':
          pulumi.Input.mapInputValue<
            AutoscalingConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(autoscalingConfig, (value) => value.toMap()),
      'configBucket': configBucket,
      'encryptionConfig':
          pulumi.Input.mapInputValue<
            EncryptionConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'endpointConfig':
          pulumi.Input.mapInputValue<
            EndpointConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig':
          pulumi.Input.mapInputValue<
            GceClusterConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig':
          pulumi.Input.mapInputValue<
            GkeClusterConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions':
          pulumi.Input.mapInputValue<
            List<NodeInitializationActionResponseDataprocV1beta2>,
            List<Map<String, dynamic>>
          >(
            initializationActions,
            (value) =>
                pulumi.Input.encodeList<
                  NodeInitializationActionResponseDataprocV1beta2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lifecycleConfig':
          pulumi.Input.mapInputValue<
            LifecycleConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(lifecycleConfig, (value) => value.toMap()),
      'masterConfig':
          pulumi.Input.mapInputValue<
            InstanceGroupConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(masterConfig, (value) => value.toMap()),
      'metastoreConfig':
          pulumi.Input.mapInputValue<
            MetastoreConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig':
          pulumi.Input.mapInputValue<
            InstanceGroupConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig':
          pulumi.Input.mapInputValue<
            SecurityConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(securityConfig, (value) => value.toMap()),
      'softwareConfig':
          pulumi.Input.mapInputValue<
            SoftwareConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(softwareConfig, (value) => value.toMap()),
      'tempBucket': tempBucket,
      'workerConfig':
          pulumi.Input.mapInputValue<
            InstanceGroupConfigResponseDataprocV1beta2,
            Map<String, dynamic>
          >(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterConfigResponseDataprocV1beta2(
      autoscalingConfig: pulumi.Input.fromValue(
        AutoscalingConfigResponseDataprocV1beta2.fromMap(
          (map['autoscalingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      configBucket: pulumi.Input.fromValue(map['configBucket'] as String),
      encryptionConfig: pulumi.Input.fromValue(
        EncryptionConfigResponseDataprocV1beta2.fromMap(
          (map['encryptionConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      endpointConfig: pulumi.Input.fromValue(
        EndpointConfigResponseDataprocV1beta2.fromMap(
          (map['endpointConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      gceClusterConfig: pulumi.Input.fromValue(
        GceClusterConfigResponseDataprocV1beta2.fromMap(
          (map['gceClusterConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      gkeClusterConfig: pulumi.Input.fromValue(
        GkeClusterConfigResponseDataprocV1beta2.fromMap(
          (map['gkeClusterConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      initializationActions: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<NodeInitializationActionResponseDataprocV1beta2>(
          map['initializationActions']!,
          (value) => NodeInitializationActionResponseDataprocV1beta2.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      lifecycleConfig: pulumi.Input.fromValue(
        LifecycleConfigResponseDataprocV1beta2.fromMap(
          (map['lifecycleConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      masterConfig: pulumi.Input.fromValue(
        InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['masterConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      metastoreConfig: pulumi.Input.fromValue(
        MetastoreConfigResponseDataprocV1beta2.fromMap(
          (map['metastoreConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      secondaryWorkerConfig: pulumi.Input.fromValue(
        InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['secondaryWorkerConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      securityConfig: pulumi.Input.fromValue(
        SecurityConfigResponseDataprocV1beta2.fromMap(
          (map['securityConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      softwareConfig: pulumi.Input.fromValue(
        SoftwareConfigResponseDataprocV1beta2.fromMap(
          (map['softwareConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      tempBucket: pulumi.Input.fromValue(map['tempBucket'] as String),
      workerConfig: pulumi.Input.fromValue(
        InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['workerConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
