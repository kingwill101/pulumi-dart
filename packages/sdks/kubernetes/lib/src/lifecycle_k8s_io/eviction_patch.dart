// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'eviction_spec_patch.dart';
import 'eviction_status_patch.dart';

/// Eviction initiates an eviction process, which should ideally result in a graceful eviction of a .spec.target (e.g. termination of a pod).
///
/// The evictionrequest-controller observes intents of all EvictionRequests and transforms them into Evictions. It manages the Eviction lifecycle. Requesters are preserved in .status.requesters even after they have withdrawn their request. If all requesters withdraw their eviction intent for a common target, the eviction will be canceled. Once all EvictionRequest corresponding to this Eviction .spec.target have been removed, this Eviction object will eventually be garbage collected.
///
/// If the target is a pod, the .status.targetResponders is populated from Pod's .spec.evictionResponders.
///
/// Responders should observe and communicate through the .status to help with the eviction of the target when they see their state == Active in .status.targetResponders. ResponderStatus struct should then be periodically updated to indicate the progress or completion of the eviction process by each responder in .status.responders. If .status.responders[].heartbeatTime is not updated within the heartbeat deadline defined by the Eviction API (currently 20 minutes), the eviction is passed over to the next responder with a lower priority.
///
/// If there are no other responders and the target is a pod, the last default imperative-eviction.k8s.io/evictor responder with a priority of 100 will evict the pod using the imperative Eviction API (pods/&lt;name&gt;/eviction subresource).
class EvictionPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata. .metadata.name set by the evictionrequest-controller is purely informative and subject to change. .spec.target field should be used to identify the target precisesly.
  ///
  /// The requester and responder names will be used as label keys and added to the labels of the eviction in one of the following formats: 1. acme.io/foo: "requester" 2. acme.io/foo: "responder" 3. acme.io/foo: "requester-responder"
  ///
  /// Please see EvictionParticipantRole for available role label values.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// spec defines the eviction specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<EvictionSpecPatch?>? spec;
  /// status represents the most recently observed status of the eviction. Populated by responders and evictionrequest-controller. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<EvictionStatusPatch?>? status;

  /// Creates a new [EvictionPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata. .metadata.name set by the evictionrequest-controller is purely informative and subject to change. .spec.target field should be used to identify the target precisesly.
  /// [spec] spec defines the eviction specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// [status] status represents the most recently observed status of the eviction. Populated by responders and evictionrequest-controller. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const EvictionPatch({
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
      'spec': ?pulumi.Input.mapOptionalInputValue<EvictionSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<EvictionStatusPatch, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory EvictionPatch.fromMap(Map<String, dynamic> map) {
    return EvictionPatch(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
