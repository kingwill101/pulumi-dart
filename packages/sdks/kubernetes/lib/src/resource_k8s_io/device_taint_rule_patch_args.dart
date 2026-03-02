// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_taint_rule_spec_patch.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_device_taint_rule_patch_args_doc}
/// The set of arguments for DeviceTaintRulePatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_device_taint_rule_patch_args_doc}
class DeviceTaintRulePatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<DeviceTaintRuleSpecPatch>? spec;

  /// Creates a new [DeviceTaintRulePatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec specifies the selector and one taint.
  DeviceTaintRulePatchArgs({
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
      'spec': ?pulumi.Input.mapOptionalInputValue<DeviceTaintRuleSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRulePatchArgs.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRulePatchArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (DeviceTaintRuleSpecPatch.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

