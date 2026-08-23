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
  /// The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gceClusterConfig`, `masterConfig`, `workerConfig`, `secondaryWorkerConfig`, and `autoscalingConfig`.
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
  /// A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://docs.cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
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
  /// [gkeClusterConfig] The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gceClusterConfig`, `masterConfig`, `workerConfig`, `secondaryWorkerConfig`, and `autoscalingConfig`.
  /// [initializationActions] Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Lifecycle setting for the cluster.
  /// [masterConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [metastoreConfig] Metastore configuration.
  /// [secondaryWorkerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [securityConfig] Security settings for the cluster.
  /// [softwareConfig] The config settings for software inside the cluster.
  /// [stagingBucket] A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://docs.cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// [tempBucket] A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket.
  /// [workerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  const WorkflowTemplatePlacementManagedClusterConfig({
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
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointConfig: (() { final guardedValue = map['endpointConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigEndpointConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gceClusterConfig: (() { final guardedValue = map['gceClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeClusterConfig: (() { final guardedValue = map['gkeClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initializationActions: (() { final guardedValue = map['initializationActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigInitializationAction>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigInitializationAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleConfig: (() { final guardedValue = map['lifecycleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterConfig: (() { final guardedValue = map['masterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigMasterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metastoreConfig: (() { final guardedValue = map['metastoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryWorkerConfig: (() { final guardedValue = map['secondaryWorkerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softwareConfig: (() { final guardedValue = map['softwareConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stagingBucket: (() { final guardedValue = map['stagingBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tempBucket: (() { final guardedValue = map['tempBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
