// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'workload_spec_scheduling_k8s_io_v1alpha2.dart';

/// {@template pulumi_scheduling_k8s_io_v1alpha2_workload_scheduling_k8s_io_v1alpha2_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_scheduling_k8s_io_v1alpha2_workload_scheduling_k8s_io_v1alpha2_args_doc}
class WorkloadSchedulingK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// Spec defines the desired behavior of a Workload.
  final pulumi.Input<WorkloadSpecSchedulingK8sIoV1alpha2> spec;

  /// Creates a new [WorkloadSchedulingK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec defines the desired behavior of a Workload.
  const WorkloadSchedulingK8sIoV1alpha2Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<WorkloadSpecSchedulingK8sIoV1alpha2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory WorkloadSchedulingK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return WorkloadSchedulingK8sIoV1alpha2Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(WorkloadSpecSchedulingK8sIoV1alpha2.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
