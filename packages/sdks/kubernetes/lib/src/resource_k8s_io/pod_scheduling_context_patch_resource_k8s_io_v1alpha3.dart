// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_scheduling_context_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'pod_scheduling_context_status_patch_resource_k8s_io_v1alpha3.dart';

/// PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DRAControlPlaneController feature gate.
class PodSchedulingContextPatchResourceK8sIoV1alpha3 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// Spec describes where resources for the Pod are needed.
  final pulumi.Input<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3>? spec;

  /// Status describes where resources for the Pod can be allocated.
  final pulumi.Input<PodSchedulingContextStatusPatchResourceK8sIoV1alpha3>?
  status;

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
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectMetaPatch,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            PodSchedulingContextSpecPatchResourceK8sIoV1alpha3,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            PodSchedulingContextStatusPatchResourceK8sIoV1alpha3,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory PodSchedulingContextPatchResourceK8sIoV1alpha3.fromMap(
    Map<String, dynamic> map,
  ) {
    return PodSchedulingContextPatchResourceK8sIoV1alpha3(
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
          ObjectMetaPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodSchedulingContextSpecPatchResourceK8sIoV1alpha3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodSchedulingContextStatusPatchResourceK8sIoV1alpha3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
