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
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<String?>? source;
  /// Available values: "percentage".
  final pulumi.Input<String?>? strategy;
  final pulumi.Input<List<WorkersDeploymentVersion>?>? versions;

  /// Creates a new [WorkersDeploymentState].
  /// [accountId] Identifier.
  /// [annotations] Optional.
  /// [authorEmail] Optional.
  /// [createdOn] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  /// [source] Optional.
  /// [strategy] Available values: "percentage".
  /// [versions] Optional.
  const WorkersDeploymentState({
    this.accountId,
    this.annotations,
    this.authorEmail,
    this.createdOn,
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
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersDeploymentVersion>(guardedValue, (value) => WorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
