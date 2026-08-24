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
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;
  /// Available values: "percentage".
  final pulumi.Input<String> strategy;
  final pulumi.Input<List<WorkersDeploymentVersion>> versions;

  /// Creates a new [WorkersDeploymentArgs].
  /// [accountId] Identifier.
  /// [annotations] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  /// [strategy] Available values: "percentage".
  /// [versions] Required.
  const WorkersDeploymentArgs({
    required this.accountId,
    this.annotations,
    required this.scriptName,
    required this.strategy,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkersDeploymentAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'scriptName': scriptName,
      'strategy': strategy,
      'versions': pulumi.Input.mapInputValue<List<WorkersDeploymentVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<WorkersDeploymentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkersDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      versions: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersDeploymentVersion>(map['versions']!, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
