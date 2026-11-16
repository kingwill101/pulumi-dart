// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_deployments_result_deployment_annotations.dart';
import 'get_workers_deployments_result_deployment_code_update_strategy.dart';
import 'get_workers_deployments_result_deployment_version.dart';

class GetWorkersDeploymentsResultDeployment {
  /// Metadata attached to the deployment.
  final pulumi.Input<GetWorkersDeploymentsResultDeploymentAnnotations> annotations;
  final pulumi.Input<String> authorEmail;
  /// Choose whether to apply Durable Object code updates immediately or defer them. When omitted, the default strategy applies.
  final pulumi.Input<GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy> codeUpdateStrategy;
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> id;
  final pulumi.Input<String> source;
  /// Strategy for routing traffic across the listed versions. `percentage` splits traffic according to each version's `percentage`.
  /// Available values: "percentage".
  final pulumi.Input<String> strategy;
  /// Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  final pulumi.Input<List<GetWorkersDeploymentsResultDeploymentVersion>> versions;

  /// Creates a new [GetWorkersDeploymentsResultDeployment].
  /// [annotations] Metadata attached to the deployment.
  /// [authorEmail] Required.
  /// [codeUpdateStrategy] Choose whether to apply Durable Object code updates immediately or defer them. When omitted, the default strategy applies.
  /// [createdOn] Required.
  /// [id] Required.
  /// [source] Required.
  /// [strategy] Strategy for routing traffic across the listed versions. `percentage` splits traffic according to each version's `percentage`.
  /// [versions] Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  const GetWorkersDeploymentsResultDeployment({
    required this.annotations,
    required this.authorEmail,
    required this.codeUpdateStrategy,
    required this.createdOn,
    required this.id,
    required this.source,
    required this.strategy,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<GetWorkersDeploymentsResultDeploymentAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'authorEmail': authorEmail,
      'codeUpdateStrategy': pulumi.Input.mapInputValue<GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy, Map<String, dynamic>>(codeUpdateStrategy, (value) => value.toMap()),
      'createdOn': createdOn,
      'id': id,
      'source': source,
      'strategy': strategy,
      'versions': pulumi.Input.mapInputValue<List<GetWorkersDeploymentsResultDeploymentVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetWorkersDeploymentsResultDeploymentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkersDeploymentsResultDeployment.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsResultDeployment(
      annotations: pulumi.Input.fromValue(GetWorkersDeploymentsResultDeploymentAnnotations.fromMap((map['annotations']! as Map).cast<String, dynamic>())),
      authorEmail: pulumi.Input.fromValue(map['authorEmail'] as String),
      codeUpdateStrategy: pulumi.Input.fromValue(GetWorkersDeploymentsResultDeploymentCodeUpdateStrategy.fromMap((map['codeUpdateStrategy']! as Map).cast<String, dynamic>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      versions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersDeploymentsResultDeploymentVersion>(map['versions']!, (value) => GetWorkersDeploymentsResultDeploymentVersion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
