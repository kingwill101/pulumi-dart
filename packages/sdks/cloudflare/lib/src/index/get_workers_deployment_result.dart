// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_deployment_annotations.dart';
import 'get_workers_deployment_version.dart';

/// Result data returned by getWorkersDeployment.
class GetWorkersDeploymentResult {
  /// Identifier.
  final String? accountId;
  final GetWorkersDeploymentAnnotations? annotations;
  final String? authorEmail;
  final String? createdOn;
  final String? deploymentId;
  /// The ID of this resource.
  final String? id;
  /// Name of the script, used in URLs and route configuration.
  final String? scriptName;
  final String? source;
  /// Available values: "percentage".
  final String? strategy;
  final List<GetWorkersDeploymentVersion>? versions;

  /// Creates a new [GetWorkersDeploymentResult].
  /// [accountId] Identifier.
  /// [annotations] Optional.
  /// [authorEmail] Optional.
  /// [createdOn] Optional.
  /// [deploymentId] Optional.
  /// [id] The ID of this resource.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  /// [source] Optional.
  /// [strategy] Available values: "percentage".
  /// [versions] Optional.
  const GetWorkersDeploymentResult({
    this.accountId,
    this.annotations,
    this.authorEmail,
    this.createdOn,
    this.deploymentId,
    this.id,
    this.scriptName,
    this.source,
    this.strategy,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'annotations': ?annotations?.toMap(),
      'authorEmail': ?authorEmail,
      'createdOn': ?createdOn,
      'deploymentId': ?deploymentId,
      'id': ?id,
      'scriptName': ?scriptName,
      'source': ?source,
      'strategy': ?strategy,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersDeploymentVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkersDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return GetWorkersDeploymentAnnotations.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authorEmail: (() { final guardedValue = map['authorEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersDeploymentVersion>(guardedValue, (value) => GetWorkersDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
