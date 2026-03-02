// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'lease_candidate_spec_coordination_k8s_io_v1alpha2.dart';

/// {@template pulumi_coordination_k8s_io_v1alpha2_lease_candidate_coordination_k8s_io_v1alpha2_args_doc}
/// The set of arguments for LeaseCandidate.
/// {@endtemplate}
/// {@macro pulumi_coordination_k8s_io_v1alpha2_lease_candidate_coordination_k8s_io_v1alpha2_args_doc}
class LeaseCandidateCoordinationK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec contains the specification of the Lease. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<LeaseCandidateSpecCoordinationK8sIoV1alpha2>? spec;

  /// Creates a new [LeaseCandidateCoordinationK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec contains the specification of the Lease. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  LeaseCandidateCoordinationK8sIoV1alpha2Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<LeaseCandidateSpecCoordinationK8sIoV1alpha2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory LeaseCandidateCoordinationK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return LeaseCandidateCoordinationK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (LeaseCandidateSpecCoordinationK8sIoV1alpha2.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

