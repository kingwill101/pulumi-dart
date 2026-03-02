// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollback_config_patch.dart';

/// DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
class DeploymentRollbackPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Required: This must match the Name of a deployment.
  final pulumi.Input<String>? name;
  /// The config of this deployment rollback.
  final pulumi.Input<RollbackConfigPatch>? rollbackTo;
  /// The annotations to be updated to a deployment
  final pulumi.Input<Map<String, String>>? updatedAnnotations;

  /// Creates a new [DeploymentRollbackPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] Required: This must match the Name of a deployment.
  /// [rollbackTo] The config of this deployment rollback.
  /// [updatedAnnotations] The annotations to be updated to a deployment
  DeploymentRollbackPatch({
    this.apiVersion,
    this.kind,
    this.name,
    this.rollbackTo,
    this.updatedAnnotations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
      'rollbackTo': ?pulumi.Input.mapOptionalInputValue<RollbackConfigPatch, Map<String, dynamic>>(rollbackTo, (value) => value.toMap()),
      'updatedAnnotations': ?updatedAnnotations,
    };
  }

  factory DeploymentRollbackPatch.fromMap(Map<String, dynamic> map) {
    return DeploymentRollbackPatch(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      rollbackTo: map['rollbackTo'] == null ? null : (RollbackConfigPatch.fromMap((map['rollbackTo'] as Map).cast<String, dynamic>())).input(),
      updatedAnnotations: map['updatedAnnotations'] == null ? null : ((map['updatedAnnotations'] as Map).cast<String, String>()).input(),
    );
  }
}

