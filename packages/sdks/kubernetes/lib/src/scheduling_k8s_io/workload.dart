// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'workload_spec.dart';

/// Workload allows for expressing scheduling constraints that should be used when managing lifecycle of workloads from scheduling perspective, including scheduling, preemption, eviction and other phases.
class Workload {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object's metadata. Name must be a DNS subdomain.
  final pulumi.Input<ObjectMeta>? metadata;

  /// Spec defines the desired behavior of a Workload.
  final pulumi.Input<WorkloadSpec> spec;

  /// Creates a new [Workload].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. Name must be a DNS subdomain.
  /// [spec] Spec defines the desired behavior of a Workload.
  Workload({this.apiVersion, this.kind, this.metadata, required this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'spec': pulumi.Input.mapInputValue<WorkloadSpec, Map<String, dynamic>>(
        spec,
        (value) => value.toMap(),
      ),
    };
  }

  factory Workload.fromMap(Map<String, dynamic> map) {
    return Workload(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      spec: pulumi.Input.fromValue(
        WorkloadSpec.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
