// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_disruption_budget_spec.dart';
import 'pod_disruption_budget_status.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudget {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Specification of the desired behavior of the PodDisruptionBudget.
  final pulumi.Input<PodDisruptionBudgetSpec>? spec;
  /// Most recently observed status of the PodDisruptionBudget.
  final pulumi.Input<PodDisruptionBudgetStatus>? status;

  /// Creates a new [PodDisruptionBudget].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the PodDisruptionBudget.
  /// [status] Most recently observed status of the PodDisruptionBudget.
  PodDisruptionBudget({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PodDisruptionBudgetSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<PodDisruptionBudgetStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory PodDisruptionBudget.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudget(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (PodDisruptionBudgetSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (PodDisruptionBudgetStatus.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

