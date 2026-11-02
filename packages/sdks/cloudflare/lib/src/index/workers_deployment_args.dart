// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_deployment_annotations.dart';
import 'workers_deployment_version.dart';

/// {@template pulumi_index_workers_deployment_workers_deployment_args_doc}
/// The set of arguments for WorkersDeployment.
/// {@endtemplate}
/// {@macro pulumi_index_workers_deployment_workers_deployment_args_doc}
class WorkersDeploymentArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<WorkersDeploymentAnnotations?>? annotations;
  /// If set to true, the deployment will be created even if normally blocked by something such rolling back to an older version when a secret has changed.
  final pulumi.Input<bool?>? force;
  /// Name of the script.
  final pulumi.Input<String> scriptName;
  /// Available values: "percentage".
  final pulumi.Input<String> strategy;
  /// Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  final pulumi.Input<List<WorkersDeploymentVersion>> versions;

  /// Creates a new [WorkersDeploymentArgs].
  /// [accountId] Identifier.
  /// [annotations] Optional.
  /// [force] If set to true, the deployment will be created even if normally blocked by something such rolling back to an older version when a secret has changed.
  /// [scriptName] Name of the script.
  /// [strategy] Available values: "percentage".
  /// [versions] Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  const WorkersDeploymentArgs({
    required this.accountId,
    this.annotations,
    this.force,
    required this.scriptName,
    required this.strategy,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkersDeploymentAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'force': ?force,
      'scriptName': scriptName,
      'strategy': strategy,
      'versions': pulumi.Input.mapInputValue<List<WorkersDeploymentVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<WorkersDeploymentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkersDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      versions: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersDeploymentVersion>(map['versions']!, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
