// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'scale_spec_patch_apps_v1beta2.dart';
import 'scale_status_patch_apps_v1beta2.dart';

/// Scale represents a scaling request for a resource.
class ScalePatchAppsV1beta2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final pulumi.Input<ScaleSpecPatchAppsV1beta2>? spec;

  /// current status of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.
  final pulumi.Input<ScaleStatusPatchAppsV1beta2>? status;

  /// Creates a new [ScalePatchAppsV1beta2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  /// [status] current status of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.
  ScalePatchAppsV1beta2({
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
            ScaleSpecPatchAppsV1beta2,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            ScaleStatusPatchAppsV1beta2,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory ScalePatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return ScalePatchAppsV1beta2(
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
          ScaleSpecPatchAppsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScaleStatusPatchAppsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
