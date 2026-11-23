// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_lustre_export_config.dart';
import 'ai_model_development_cluster_network.dart';
import 'ai_model_development_cluster_node_pool.dart';
import 'ai_model_development_cluster_orchestrator_spec.dart';
import 'ai_model_development_cluster_runtime_spec.dart';

/// {@template pulumi_vertex_ai_model_development_cluster_ai_model_development_cluster_args_doc}
/// The set of arguments for AiModelDevelopmentCluster.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_model_development_cluster_ai_model_development_cluster_args_doc}
class AiModelDevelopmentClusterArgs {
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
  final pulumi.Input<String> modelDevelopmentClusterId;
  /// Network spec of the cluster.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterNetwork?>? network;
  /// The spec of the pools of different resources. Node pools can be added,
  /// removed, or reordered in place; changing some fields on an existing node
  /// pool may require replacing the node pool (validated server-side by the
  /// API).
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterNodePool>> nodePools;
  /// The spec of the orchestrator. Only one orchestrator may be specified.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterOrchestratorSpec> orchestratorSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the ModelDevelopmentCluster. eg us-central1
  final pulumi.Input<String?>? region;
  /// The runtime spec of the cluster.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterRuntimeSpec?>? runtimeSpec;
  /// Whether the service also refreshes service-managed fields (startup and
  /// prolog/epilog scripts, default node images) on update. `USER_ONLY` applies
  /// only your changes; adding a node pool requires `USER_AND_SERVICE`.
  /// Only applies to Slurm clusters (`orchestrator_spec.slurm_spec`); ignored
  /// for GKE clusters (`kubernetesSpec`).
  /// Defaults to `USER_AND_SERVICE`. Possible values are `USER_ONLY` and
  /// `USER_AND_SERVICE`.
  final pulumi.Input<String?>? updateMode;

  /// Creates a new [AiModelDevelopmentClusterArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the ModelDevelopmentCluster.
  /// [labels] The labels with user-defined metadata to organize PersistentResource.
  /// [lustreExportConfig] Configuration for backing up the Managed Lustre instances attached to a
  /// [modelDevelopmentClusterId] The ID to use for the cluster, which is the final component
  /// [network] Network spec of the cluster.
  /// [nodePools] The spec of the pools of different resources. Node pools can be added,
  /// [orchestratorSpec] The spec of the orchestrator. Only one orchestrator may be specified.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the ModelDevelopmentCluster. eg us-central1
  /// [runtimeSpec] The runtime spec of the cluster.
  /// [updateMode] Whether the service also refreshes service-managed fields (startup and
  const AiModelDevelopmentClusterArgs({
    this.deletionPolicy,
    this.displayName,
    this.labels,
    this.lustreExportConfig,
    required this.modelDevelopmentClusterId,
    this.network,
    required this.nodePools,
    required this.orchestratorSpec,
    this.project,
    this.region,
    this.runtimeSpec,
    this.updateMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'lustreExportConfig': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterLustreExportConfig, Map<String, dynamic>>(lustreExportConfig, (value) => value.toMap()),
      'modelDevelopmentClusterId': modelDevelopmentClusterId,
      'network': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nodePools': pulumi.Input.mapInputValue<List<AiModelDevelopmentClusterNodePool>, List<Map<String, dynamic>>>(nodePools, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterNodePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orchestratorSpec': pulumi.Input.mapInputValue<AiModelDevelopmentClusterOrchestratorSpec, Map<String, dynamic>>(orchestratorSpec, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'runtimeSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterRuntimeSpec, Map<String, dynamic>>(runtimeSpec, (value) => value.toMap()),
      'updateMode': ?updateMode,
    };
  }

  factory AiModelDevelopmentClusterArgs.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lustreExportConfig: (() { final guardedValue = map['lustreExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterLustreExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDevelopmentClusterId: pulumi.Input.fromValue(map['modelDevelopmentClusterId'] as String),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePools: pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterNodePool>(map['nodePools']!, (value) => AiModelDevelopmentClusterNodePool.fromMap((value as Map).cast<String, dynamic>()))),
      orchestratorSpec: pulumi.Input.fromValue(AiModelDevelopmentClusterOrchestratorSpec.fromMap((map['orchestratorSpec']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeSpec: (() { final guardedValue = map['runtimeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateMode: (() { final guardedValue = map['updateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
