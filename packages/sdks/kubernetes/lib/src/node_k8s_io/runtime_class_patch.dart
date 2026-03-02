// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'overhead_patch.dart';
import 'scheduling_patch.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/
class RuntimeClassPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  final pulumi.Input<String>? handler;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
  /// https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/
  final pulumi.Input<OverheadPatch>? overhead;
  /// scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final pulumi.Input<SchedulingPatch>? scheduling;

  /// Creates a new [RuntimeClassPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [handler] handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [overhead] overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
  /// [scheduling] scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  RuntimeClassPatch({
    this.apiVersion,
    this.handler,
    this.kind,
    this.metadata,
    this.overhead,
    this.scheduling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'handler': ?handler,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'overhead': ?pulumi.Input.mapOptionalInputValue<OverheadPatch, Map<String, dynamic>>(overhead, (value) => value.toMap()),
      'scheduling': ?pulumi.Input.mapOptionalInputValue<SchedulingPatch, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
    };
  }

  factory RuntimeClassPatch.fromMap(Map<String, dynamic> map) {
    return RuntimeClassPatch(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      handler: map['handler'] == null ? null : (map['handler']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      overhead: map['overhead'] == null ? null : (OverheadPatch.fromMap((map['overhead']! as Map).cast<String, dynamic>())).input(),
      scheduling: map['scheduling'] == null ? null : (SchedulingPatch.fromMap((map['scheduling']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

