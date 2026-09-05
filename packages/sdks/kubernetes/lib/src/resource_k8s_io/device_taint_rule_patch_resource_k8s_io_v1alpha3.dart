// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_taint_rule_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'device_taint_rule_status_patch_resource_k8s_io_v1alpha3.dart';

/// DeviceTaintRule adds one taint to all devices which match the selector. This has the same effect as if the taint was specified directly in the ResourceSlice by the DRA driver.
class DeviceTaintRulePatchResourceK8sIoV1alpha3 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3?>? spec;
  /// Status provides information about what was requested in the spec.
  final pulumi.Input<DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3?>? status;

  /// Creates a new [DeviceTaintRulePatchResourceK8sIoV1alpha3].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec specifies the selector and one taint.
  /// [status] Status provides information about what was requested in the spec.
  const DeviceTaintRulePatchResourceK8sIoV1alpha3({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DeviceTaintRulePatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRulePatchResourceK8sIoV1alpha3(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
