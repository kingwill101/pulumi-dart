// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'eviction_request_spec.dart';
import 'eviction_request_status.dart';

/// EvictionRequest defines a request that should ideally result in a graceful eviction of a .spec.target (e.g. termination of a pod).
///
/// The evictionrequest-controller observes intents of all EvictionRequests and transforms them into Evictions.
/// - .spec.requester is set as a label on the Eviction for easier lookup.
/// - Each target can have a set of responders assigned to it. Eviction objects are observed by
/// these responders, who implement the eviction logic and update the Eviction's status with
/// progress.
///
/// There is many-to-many relationship between EvictionRequests and Evictions in general. And many-to-one if the target is a  pod.
///
/// If all requesters withdraw their eviction intent for a common target, the eviction will be canceled. Deleting an EvictionRequest also counts as a withdrawal. Once all EvictionRequest of a target are removed, the corresponding Evictions are eventually garbage collected.
class EvictionRequest {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta?>? metadata;
  /// spec defines the eviction request specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<EvictionRequestSpec> spec;
  /// status represents the most recently observed status of the eviction request. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<EvictionRequestStatus?>? status;

  /// Creates a new [EvictionRequest].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] spec defines the eviction request specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// [status] status represents the most recently observed status of the eviction request. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const EvictionRequest({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<EvictionRequestSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<EvictionRequestStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory EvictionRequest.fromMap(Map<String, dynamic> map) {
    return EvictionRequest(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(EvictionRequestSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
