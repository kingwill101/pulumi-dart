// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_class_spec_patch.dart';

/// {@template pulumi_resource_k8s_io_v1_device_class_patch_args_doc}
/// The set of arguments for DeviceClassPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1_device_class_patch_args_doc}
class DeviceClassPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// Spec defines what can be allocated and how to configure it.
  ///
  /// This is mutable. Consumers have to be prepared for classes changing at any time, either because they get updated or replaced. Claim allocations are done once based on whatever was set in classes at the time of allocation.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<DeviceClassSpecPatch>? spec;

  /// Creates a new [DeviceClassPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec defines what can be allocated and how to configure it.
  DeviceClassPatchArgs({this.apiVersion, this.kind, this.metadata, this.spec});

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
            DeviceClassSpecPatch,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory DeviceClassPatchArgs.fromMap(Map<String, dynamic> map) {
    return DeviceClassPatchArgs(
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
          DeviceClassSpecPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
