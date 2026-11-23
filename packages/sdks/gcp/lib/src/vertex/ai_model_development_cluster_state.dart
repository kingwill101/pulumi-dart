// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_cluster_event.dart';
import 'ai_model_development_cluster_cluster_status.dart';
import 'ai_model_development_cluster_lustre_export_config.dart';
import 'ai_model_development_cluster_network.dart';
import 'ai_model_development_cluster_node_pool.dart';
import 'ai_model_development_cluster_orchestrator_spec.dart';
import 'ai_model_development_cluster_runtime.dart';
import 'ai_model_development_cluster_runtime_spec.dart';

/// Input properties used for looking up and filtering AiModelDevelopmentCluster resources.
class AiModelDevelopmentClusterState {
  /// The events of the cluster. Displays the 100 most recent events.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterClusterEvent>?>? clusterEvents;
  /// The status information of the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterClusterStatus>?>? clusterStatuses;
  /// (Output)
  /// Time when the TrainingService was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the ModelDevelopmentCluster.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The labels with user-defined metadata to organize PersistentResource.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Configuration for backing up the Managed Lustre instances attached to a
  /// cluster to a Cloud Storage bucket.
  /// By default every instance attached to any node pool is backed up; set
  /// `lustres` to narrow that to a subset. Each instance is written to its own
  /// prefix under the bucket, so several instances, and several clusters, can
  /// share a destination.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterLustreExportConfig?>? lustreExportConfig;
  /// The ID to use for the cluster, which is the final component
  /// of the ModelDevelopmentCluster's resource name.
  /// This value should be 1-10 characters, and valid characters
  /// are `/^a-z?$/`. When using `slurmSpec`,
  /// hyphens are not allowed (`/^[a-z][a-z0-9]{0,9}$/`).
  final pulumi.Input<String?>? modelDevelopmentClusterId;
  /// (Output)
  /// Identifier. Resource name of the TrainingService. Format:
  /// `projects/{project}/locations/{location}/modelDevelopmentClusters/{cluster}/trainingServices/{training_service}`
  final pulumi.Input<String?>? name;
  /// Network spec of the cluster.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterNetwork?>? network;
  /// The spec of the pools of different resources. Node pools can be added,
  /// removed, or reordered in place; changing some fields on an existing node
  /// pool may require replacing the node pool (validated server-side by the
  /// API).
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterNodePool>?>? nodePools;
  /// The spec of the orchestrator. Only one orchestrator may be specified.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterOrchestratorSpec?>? orchestratorSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the ModelDevelopmentCluster. eg us-central1
  final pulumi.Input<String?>? region;
  /// The runtime spec of the cluster.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterRuntimeSpec?>? runtimeSpec;
  /// The runtime backfilled records of the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntime>?>? runtimes;
  /// Time when the ModelDevelopmentCluster for the first time entered the
  /// `RUNNING` state.
  final pulumi.Input<String?>? startTime;
  /// Whether the service also refreshes service-managed fields (startup and
  /// prolog/epilog scripts, default node images) on update. `USER_ONLY` applies
  /// only your changes; adding a node pool requires `USER_AND_SERVICE`.
  /// Only applies to Slurm clusters (`orchestrator_spec.slurm_spec`); ignored
  /// for GKE clusters (`kubernetesSpec`).
  /// Defaults to `USER_AND_SERVICE`. Possible values are `USER_ONLY` and
  /// `USER_AND_SERVICE`.
  final pulumi.Input<String?>? updateMode;
  /// (Output)
  /// Time when the TrainingService was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiModelDevelopmentClusterState].
  /// [clusterEvents] The events of the cluster. Displays the 100 most recent events.
  /// [clusterStatuses] The status information of the cluster.
  /// [createTime] (Output)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the ModelDevelopmentCluster.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] The labels with user-defined metadata to organize PersistentResource.
  /// [lustreExportConfig] Configuration for backing up the Managed Lustre instances attached to a
  /// [modelDevelopmentClusterId] The ID to use for the cluster, which is the final component
  /// [name] (Output)
  /// [network] Network spec of the cluster.
  /// [nodePools] The spec of the pools of different resources. Node pools can be added,
  /// [orchestratorSpec] The spec of the orchestrator. Only one orchestrator may be specified.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the ModelDevelopmentCluster. eg us-central1
  /// [runtimeSpec] The runtime spec of the cluster.
  /// [runtimes] The runtime backfilled records of the cluster.
  /// [startTime] Time when the ModelDevelopmentCluster for the first time entered the
  /// [updateMode] Whether the service also refreshes service-managed fields (startup and
  /// [updateTime] (Output)
  const AiModelDevelopmentClusterState({
    this.clusterEvents,
    this.clusterStatuses,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.lustreExportConfig,
    this.modelDevelopmentClusterId,
    this.name,
    this.network,
    this.nodePools,
    this.orchestratorSpec,
    this.project,
    this.pulumiLabels,
    this.region,
    this.runtimeSpec,
    this.runtimes,
    this.startTime,
    this.updateMode,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterEvents': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterClusterEvent>, List<Map<String, dynamic>>>(clusterEvents, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterClusterEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterStatuses': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterClusterStatus>, List<Map<String, dynamic>>>(clusterStatuses, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterClusterStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'lustreExportConfig': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterLustreExportConfig, Map<String, dynamic>>(lustreExportConfig, (value) => value.toMap()),
      'modelDevelopmentClusterId': ?modelDevelopmentClusterId,
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nodePools': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterNodePool>, List<Map<String, dynamic>>>(nodePools, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterNodePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orchestratorSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterOrchestratorSpec, Map<String, dynamic>>(orchestratorSpec, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'runtimeSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterRuntimeSpec, Map<String, dynamic>>(runtimeSpec, (value) => value.toMap()),
      'runtimes': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntime>, List<Map<String, dynamic>>>(runtimes, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': ?startTime,
      'updateMode': ?updateMode,
      'updateTime': ?updateTime,
    };
  }

  factory AiModelDevelopmentClusterState.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterState(
      clusterEvents: (() { final guardedValue = map['clusterEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterClusterEvent>(guardedValue, (value) => AiModelDevelopmentClusterClusterEvent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterStatuses: (() { final guardedValue = map['clusterStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatus>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lustreExportConfig: (() { final guardedValue = map['lustreExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterLustreExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDevelopmentClusterId: (() { final guardedValue = map['modelDevelopmentClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterNodePool>(guardedValue, (value) => AiModelDevelopmentClusterNodePool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      orchestratorSpec: (() { final guardedValue = map['orchestratorSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterOrchestratorSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeSpec: (() { final guardedValue = map['runtimeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimes: (() { final guardedValue = map['runtimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntime>(guardedValue, (value) => AiModelDevelopmentClusterRuntime.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateMode: (() { final guardedValue = map['updateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
