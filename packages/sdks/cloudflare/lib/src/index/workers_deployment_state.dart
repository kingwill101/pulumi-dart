// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_deployment_annotations.dart';
import 'workers_deployment_version.dart';

/// Input properties used for looking up and filtering WorkersDeployment resources.
class WorkersDeploymentState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<WorkersDeploymentAnnotations?>? annotations;
  final pulumi.Input<String?>? authorEmail;
  final pulumi.Input<String?>? createdOn;
  /// If set to true, the deployment will be created even if normally blocked by something such rolling back to an older version when a secret has changed.
  final pulumi.Input<bool?>? force;
  /// Name of the script.
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<String?>? source;
  /// Available values: "percentage".
  final pulumi.Input<String?>? strategy;
  /// Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  final pulumi.Input<List<WorkersDeploymentVersion>?>? versions;

  /// Creates a new [WorkersDeploymentState].
  /// [accountId] Identifier.
  /// [annotations] Optional.
  /// [authorEmail] Optional.
  /// [createdOn] Optional.
  /// [force] If set to true, the deployment will be created even if normally blocked by something such rolling back to an older version when a secret has changed.
  /// [scriptName] Name of the script.
  /// [source] Optional.
  /// [strategy] Available values: "percentage".
  /// [versions] Worker versions included in this deployment. Each object must contain a `versionId` UUID and a `percentage`; percentages across all objects must total 100. In the `cf` CLI, pass the entire array as one JSON value to `--versions`, either inline, for example `--versions '[{"versionId":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`, or from a JSON file with `--versions @versions.json`.
  const WorkersDeploymentState({
    this.accountId,
    this.annotations,
    this.authorEmail,
    this.createdOn,
    this.force,
    this.scriptName,
    this.source,
    this.strategy,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'annotations': ?pulumi.Input.mapOptionalInputValue<WorkersDeploymentAnnotations, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'authorEmail': ?authorEmail,
      'createdOn': ?createdOn,
      'force': ?force,
      'scriptName': ?scriptName,
      'source': ?source,
      'strategy': ?strategy,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<WorkersDeploymentVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<WorkersDeploymentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkersDeploymentState.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorEmail: (() { final guardedValue = map['authorEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersDeploymentVersion>(guardedValue, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
