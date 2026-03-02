// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_autoscaling_config.dart';
import 'workflow_template_placement_managed_cluster_config_encryption_config.dart';
import 'workflow_template_placement_managed_cluster_config_endpoint_config.dart';
import 'workflow_template_placement_managed_cluster_config_gce_cluster_config.dart';
import 'workflow_template_placement_managed_cluster_config_gke_cluster_config.dart';
import 'workflow_template_placement_managed_cluster_config_initialization_action.dart';
import 'workflow_template_placement_managed_cluster_config_lifecycle_config.dart';
import 'workflow_template_placement_managed_cluster_config_master_config.dart';
import 'workflow_template_placement_managed_cluster_config_metastore_config.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config.dart';
import 'workflow_template_placement_managed_cluster_config_security_config.dart';
import 'workflow_template_placement_managed_cluster_config_software_config.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config.dart';

class WorkflowTemplatePlacementManagedClusterConfig {
  /// Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig>? autoscalingConfig;
  /// Encryption settings for the cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig>? encryptionConfig;
  /// Port/endpoint configuration for this cluster
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigEndpointConfig>? endpointConfig;
  /// The shared Compute Engine config settings for all instances in a cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig>? gceClusterConfig;
  /// The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gce_cluster_config`, `master_config`, `worker_config`, `secondary_worker_config`, and `autoscaling_config`.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig>? gkeClusterConfig;
  /// Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigInitializationAction>>? initializationActions;
  /// Lifecycle setting for the cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig>? lifecycleConfig;
  /// The Compute Engine config settings for additional worker instances in a cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigMasterConfig>? masterConfig;
  /// Metastore configuration.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig>? metastoreConfig;
  /// The Compute Engine config settings for additional worker instances in a cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig>? secondaryWorkerConfig;
  /// Security settings for the cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecurityConfig>? securityConfig;
  /// The config settings for software inside the cluster.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig>? softwareConfig;
  /// A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  final pulumi.Input<String>? stagingBucket;
  /// A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket.
  final pulumi.Input<String>? tempBucket;
  /// The Compute Engine config settings for additional worker instances in a cluster.
  ///
  /// - - -
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigWorkerConfig>? workerConfig;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfig].
  /// [autoscalingConfig] Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  /// [encryptionConfig] Encryption settings for the cluster.
  /// [endpointConfig] Port/endpoint configuration for this cluster
  /// [gceClusterConfig] The shared Compute Engine config settings for all instances in a cluster.
  /// [gkeClusterConfig] The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gce_cluster_config`, `master_config`, `worker_config`, `secondary_worker_config`, and `autoscaling_config`.
  /// [initializationActions] Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Lifecycle setting for the cluster.
  /// [masterConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [metastoreConfig] Metastore configuration.
  /// [secondaryWorkerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [securityConfig] Security settings for the cluster.
  /// [softwareConfig] The config settings for software inside the cluster.
  /// [stagingBucket] A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// [tempBucket] A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket.
  /// [workerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  WorkflowTemplatePlacementManagedClusterConfig({
    this.autoscalingConfig,
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
    this.stagingBucket,
    this.tempBucket,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigEndpointConfig, Map<String, dynamic>>(endpointConfig, (value) => value.toMap()),
      'gceClusterConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig, Map<String, dynamic>>(gceClusterConfig, (value) => value.toMap()),
      'gkeClusterConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig, Map<String, dynamic>>(gkeClusterConfig, (value) => value.toMap()),
      'initializationActions': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigInitializationAction>, List<Map<String, dynamic>>>(initializationActions, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigInitializationAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig, Map<String, dynamic>>(lifecycleConfig, (value) => value.toMap()),
      'masterConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigMasterConfig, Map<String, dynamic>>(masterConfig, (value) => value.toMap()),
      'metastoreConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'secondaryWorkerConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig, Map<String, dynamic>>(secondaryWorkerConfig, (value) => value.toMap()),
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'stagingBucket': ?stagingBucket,
      'tempBucket': ?tempBucket,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfig(
      autoscalingConfig: map['autoscalingConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig.fromMap((map['autoscalingConfig']! as Map).cast<String, dynamic>())).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      endpointConfig: map['endpointConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigEndpointConfig.fromMap((map['endpointConfig']! as Map).cast<String, dynamic>())).input(),
      gceClusterConfig: map['gceClusterConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig.fromMap((map['gceClusterConfig']! as Map).cast<String, dynamic>())).input(),
      gkeClusterConfig: map['gkeClusterConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig.fromMap((map['gkeClusterConfig']! as Map).cast<String, dynamic>())).input(),
      initializationActions: map['initializationActions'] == null ? null : (pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigInitializationAction>(map['initializationActions']!, (value) => WorkflowTemplatePlacementManagedClusterConfigInitializationAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lifecycleConfig: map['lifecycleConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig.fromMap((map['lifecycleConfig']! as Map).cast<String, dynamic>())).input(),
      masterConfig: map['masterConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigMasterConfig.fromMap((map['masterConfig']! as Map).cast<String, dynamic>())).input(),
      metastoreConfig: map['metastoreConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig.fromMap((map['metastoreConfig']! as Map).cast<String, dynamic>())).input(),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>())).input(),
      securityConfig: map['securityConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig.fromMap((map['softwareConfig']! as Map).cast<String, dynamic>())).input(),
      stagingBucket: map['stagingBucket'] == null ? null : (map['stagingBucket']! as String).input(),
      tempBucket: map['tempBucket'] == null ? null : (map['tempBucket']! as String).input(),
      workerConfig: map['workerConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigWorkerConfig.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

