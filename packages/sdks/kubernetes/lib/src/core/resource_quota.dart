// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_quota_spec.dart';
import 'resource_quota_status.dart';

/// ResourceQuota sets aggregate quota restrictions enforced per namespace
class ResourceQuota {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// Spec defines the desired quota. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<ResourceQuotaSpec?>? spec;
  /// Status defines the actual enforced quota and its current usage. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<ResourceQuotaStatus?>? status;

  /// Creates a new [ResourceQuota].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec defines the desired quota. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// [status] Status defines the actual enforced quota and its current usage. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const ResourceQuota({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceQuotaSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ResourceQuotaStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ResourceQuota.fromMap(Map<String, dynamic> map) {
    return ResourceQuota(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceQuotaSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceQuotaStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
