// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'pod_scheduling_context_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'pod_scheduling_context_status_patch_resource_k8s_io_v1alpha3.dart';

/// PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DRAControlPlaneController feature gate.
class PodSchedulingContextPatchResourceK8sIoV1alpha3 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMetaPatch? metadata;
  /// Spec describes where resources for the Pod are needed.
  final PodSchedulingContextSpecPatchResourceK8sIoV1alpha3? spec;
  /// Status describes where resources for the Pod can be allocated.
  final PodSchedulingContextStatusPatchResourceK8sIoV1alpha3? status;

  /// Creates a new [PodSchedulingContextPatchResourceK8sIoV1alpha3].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes where resources for the Pod are needed.
  /// [status] Status describes where resources for the Pod can be allocated.
  PodSchedulingContextPatchResourceK8sIoV1alpha3({
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
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory PodSchedulingContextPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextPatchResourceK8sIoV1alpha3(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PodSchedulingContextSpecPatchResourceK8sIoV1alpha3.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : PodSchedulingContextStatusPatchResourceK8sIoV1alpha3.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

