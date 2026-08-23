// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_response.dart';
import 'auxiliary_node_group_response.dart';
import 'dataproc_metric_config_response.dart';
import 'encryption_config_response.dart';
import 'endpoint_config_response.dart';
import 'gce_cluster_config_response.dart';
import 'gke_cluster_config_response.dart';
import 'instance_group_config_response.dart';
import 'lifecycle_config_response.dart';
import 'metastore_config_response.dart';
import 'node_initialization_action_response.dart';
import 'security_config_response.dart';
import 'software_config_response.dart';

/// The cluster config.
class ClusterConfigResponse {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final pulumi.Input<AutoscalingConfigResponse> autoscalingConfig;
  /// Optional. The node group settings.
  final pulumi.Input<List<AuxiliaryNodeGroupResponse>> auxiliaryNodeGroups;
  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String> configBucket;
  /// Optional. The config for Dataproc metrics.
  final pulumi.Input<DataprocMetricConfigResponse> dataprocMetricConfig;
  /// Optional. Encryption settings for the cluster.
  final pulumi.Input<EncryptionConfigResponse> encryptionConfig;
  /// Optional. Port/endpoint configuration for this cluster
  final pulumi.Input<EndpointConfigResponse> endpointConfig;
  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final pulumi.Input<GceClusterConfigResponse> gceClusterConfig;
  /// Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final pulumi.Input<GkeClusterConfigResponse> gkeClusterConfig;
  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final pulumi.Input<List<NodeInitializationActionResponse>> initializationActions;
  /// Optional. Lifecycle setting for the cluster.
  final pulumi.Input<LifecycleConfigResponse> lifecycleConfig;
  /// Optional. The Compute Engine config settings for the cluster's master instance.
  final pulumi.Input<InstanceGroupConfigResponse> masterConfig;
  /// Optional. Metastore configuration.
  final pulumi.Input<MetastoreConfigResponse> metastoreConfig;
  /// Optional. The Compute Engine config settings for a cluster's secondary worker instances
  final pulumi.Input<InstanceGroupConfigResponse> secondaryWorkerConfig;
  /// Optional. Security settings for the cluster.
  final pulumi.Input<SecurityConfigResponse> securityConfig;
  /// Optional. The config settings for cluster software.
  final pulumi.Input<SoftwareConfigResponse> softwareConfig;
  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String> tempBucket;
  /// Optional. The Compute Engine config settings for the cluster's worker instances.
  final pulumi.Input<InstanceGroupConfigResponse> workerConfig;

  /// Creates a new [ClusterConfigResponse].
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
  const ClusterConfigResponse({
    required this.autoscalingConfig,
    required this.auxiliaryNodeGroups,
    required this.configBucket,
    required this.dataprocMetricConfig,
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
      'autoscalingConfig': pulumi.Input.mapInputValue<AutoscalingConfigResponse, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'auxiliaryNodeGroups': pulumi.Input.mapInputValue<List<AuxiliaryNodeGroupResponse>, List<Map<String, dynamic>>>(auxiliaryNodeGroups, (value) => pulumi.Input.encodeList<AuxiliaryNodeGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configBucket': configBucket,
      'dataprocMetricConfig': pulumi.Input.mapInputValue<DataprocMetricConfigResponse, Map<String, dynamic>>(dataprocMetricConfig, (value) => value.toMap()),
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponse, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointConfig': pulumi.Input.mapInputValue<EndpointConfigResponse, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig': pulumi.Input.mapInputValue<GceClusterConfigResponse, Map<String, dynamic>>(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig': pulumi.Input.mapInputValue<GkeClusterConfigResponse, Map<String, dynamic>>(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions': pulumi.Input.mapInputValue<List<NodeInitializationActionResponse>, List<Map<String, dynamic>>>(initializationActions, (value) => pulumi.Input.encodeList<NodeInitializationActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfig': pulumi.Input.mapInputValue<LifecycleConfigResponse, Map<String, dynamic>>(lifecycleConfig, (value) => value.toMap()),
      'masterConfig': pulumi.Input.mapInputValue<InstanceGroupConfigResponse, Map<String, dynamic>>(masterConfig, (value) => value.toMap()),
      'metastoreConfig': pulumi.Input.mapInputValue<MetastoreConfigResponse, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig': pulumi.Input.mapInputValue<InstanceGroupConfigResponse, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig': pulumi.Input.mapInputValue<SecurityConfigResponse, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'softwareConfig': pulumi.Input.mapInputValue<SoftwareConfigResponse, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'tempBucket': tempBucket,
      'workerConfig': pulumi.Input.mapInputValue<InstanceGroupConfigResponse, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse(
      autoscalingConfig: pulumi.Input.fromValue(AutoscalingConfigResponse.fromMap((map['autoscalingConfig']! as Map).cast<String, dynamic>())),
      auxiliaryNodeGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<AuxiliaryNodeGroupResponse>(map['auxiliaryNodeGroups']!, (value) => AuxiliaryNodeGroupResponse.fromMap((value as Map).cast<String, dynamic>()))),
      configBucket: pulumi.Input.fromValue(map['configBucket'] as String),
      dataprocMetricConfig: pulumi.Input.fromValue(DataprocMetricConfigResponse.fromMap((map['dataprocMetricConfig']! as Map).cast<String, dynamic>())),
      encryptionConfig: pulumi.Input.fromValue(EncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      endpointConfig: pulumi.Input.fromValue(EndpointConfigResponse.fromMap((map['endpointConfig']! as Map).cast<String, dynamic>())),
      gceClusterConfig: pulumi.Input.fromValue(GceClusterConfigResponse.fromMap((map['gceClusterConfig']! as Map).cast<String, dynamic>())),
      gkeClusterConfig: pulumi.Input.fromValue(GkeClusterConfigResponse.fromMap((map['gkeClusterConfig']! as Map).cast<String, dynamic>())),
      initializationActions: pulumi.Input.fromValue(pulumi.Input.decodeList<NodeInitializationActionResponse>(map['initializationActions']!, (value) => NodeInitializationActionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleConfig: pulumi.Input.fromValue(LifecycleConfigResponse.fromMap((map['lifecycleConfig']! as Map).cast<String, dynamic>())),
      masterConfig: pulumi.Input.fromValue(InstanceGroupConfigResponse.fromMap((map['masterConfig']! as Map).cast<String, dynamic>())),
      metastoreConfig: pulumi.Input.fromValue(MetastoreConfigResponse.fromMap((map['metastoreConfig']! as Map).cast<String, dynamic>())),
      secondaryWorkerConfig: pulumi.Input.fromValue(InstanceGroupConfigResponse.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>())),
      securityConfig: pulumi.Input.fromValue(SecurityConfigResponse.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())),
      softwareConfig: pulumi.Input.fromValue(SoftwareConfigResponse.fromMap((map['softwareConfig']! as Map).cast<String, dynamic>())),
      tempBucket: pulumi.Input.fromValue(map['tempBucket'] as String),
      workerConfig: pulumi.Input.fromValue(InstanceGroupConfigResponse.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
