// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollback_config.dart';

/// DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
class DeploymentRollback {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Required: This must match the Name of a deployment.
  final pulumi.Input<String> name;
  /// The config of this deployment rollback.
  final pulumi.Input<RollbackConfig> rollbackTo;
  /// The annotations to be updated to a deployment
  final pulumi.Input<Map<String, String>>? updatedAnnotations;

  /// Creates a new [DeploymentRollback].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] Required: This must match the Name of a deployment.
  /// [rollbackTo] The config of this deployment rollback.
  /// [updatedAnnotations] The annotations to be updated to a deployment
  const DeploymentRollback({
    this.apiVersion,
    this.kind,
    required this.name,
    required this.rollbackTo,
    this.updatedAnnotations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': name,
      'rollbackTo': pulumi.Input.mapInputValue<RollbackConfig, Map<String, dynamic>>(rollbackTo, (value) => value.toMap()),
      'updatedAnnotations': ?updatedAnnotations,
    };
  }

  factory DeploymentRollback.fromMap(Map<String, dynamic> map) {
    return DeploymentRollback(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rollbackTo: pulumi.Input.fromValue(RollbackConfig.fromMap((map['rollbackTo']! as Map).cast<String, dynamic>())),
      updatedAnnotations: (() { final guardedValue = map['updatedAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

