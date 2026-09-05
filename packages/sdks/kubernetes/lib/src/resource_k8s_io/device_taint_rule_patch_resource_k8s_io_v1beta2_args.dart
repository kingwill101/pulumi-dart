// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_taint_rule_spec_patch_resource_k8s_io_v1beta2.dart';

/// {@template pulumi_resource_k8s_io_v1beta2_device_taint_rule_patch_resource_k8s_io_v1beta2_args_doc}
/// The set of arguments for DeviceTaintRulePatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1beta2_device_taint_rule_patch_resource_k8s_io_v1beta2_args_doc}
class DeviceTaintRulePatchResourceK8sIoV1beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<DeviceTaintRuleSpecPatchResourceK8sIoV1beta2?>? spec;

  /// Creates a new [DeviceTaintRulePatchResourceK8sIoV1beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec specifies the selector and one taint.
  const DeviceTaintRulePatchResourceK8sIoV1beta2Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<DeviceTaintRuleSpecPatchResourceK8sIoV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRulePatchResourceK8sIoV1beta2Args.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRulePatchResourceK8sIoV1beta2Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintRuleSpecPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
