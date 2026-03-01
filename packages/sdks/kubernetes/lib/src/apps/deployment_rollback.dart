// ignore_for_file: unused_element, unnecessary_cast

import 'rollback_config.dart';

/// DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
class DeploymentRollback {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Required: This must match the Name of a deployment.
  final String name;
  /// The config of this deployment rollback.
  final RollbackConfig rollbackTo;
  /// The annotations to be updated to a deployment
  final Map<String, String>? updatedAnnotations;

  /// Creates a new [DeploymentRollback].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] Required: This must match the Name of a deployment.
  /// [rollbackTo] The config of this deployment rollback.
  /// [updatedAnnotations] The annotations to be updated to a deployment
  DeploymentRollback({
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
      'rollbackTo': rollbackTo.toMap(),
      'updatedAnnotations': ?updatedAnnotations,
    };
  }

  factory DeploymentRollback.fromMap(Map<String, dynamic> map) {
    return DeploymentRollback(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      rollbackTo: RollbackConfig.fromMap((map['rollbackTo'] as Map).cast<String, dynamic>()),
      updatedAnnotations: map['updatedAnnotations'] == null ? null : (map['updatedAnnotations'] as Map).cast<String, String>(),
    );
  }
}

