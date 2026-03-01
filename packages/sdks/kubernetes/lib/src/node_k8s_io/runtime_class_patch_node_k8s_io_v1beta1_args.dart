// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'overhead_patch_node_k8s_io_v1beta1.dart';
import 'scheduling_patch_node_k8s_io_v1beta1.dart';

/// {@template pulumi_node_k8s_io_v1beta1_runtime_class_patch_node_k8s_io_v1beta1_args_doc}
/// The set of arguments for RuntimeClassPatch.
/// {@endtemplate}
/// {@macro pulumi_node_k8s_io_v1beta1_runtime_class_patch_node_k8s_io_v1beta1_args_doc}
class RuntimeClassPatchNodeK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must conform to the DNS Label (RFC 1123) requirements, and is immutable.
  final pulumi.Input<String>? handler;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
  final pulumi.Input<OverheadPatchNodeK8sIoV1beta1>? overhead;
  /// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final pulumi.Input<SchedulingPatchNodeK8sIoV1beta1>? scheduling;

  /// Creates a new [RuntimeClassPatchNodeK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [handler] Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must conform to the DNS Label (RFC 1123) requirements, and is immutable.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [overhead] Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
  /// [scheduling] Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  RuntimeClassPatchNodeK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? handler,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<OverheadPatchNodeK8sIoV1beta1>? overhead,
    pulumi.Output<SchedulingPatchNodeK8sIoV1beta1>? scheduling,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      handler = pulumi.Input.asOptionalInput<String>(handler),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      overhead = pulumi.Input.asOptionalInput<OverheadPatchNodeK8sIoV1beta1>(overhead),
      scheduling = pulumi.Input.asOptionalInput<SchedulingPatchNodeK8sIoV1beta1>(scheduling);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'handler': ?handler,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'overhead': ?pulumi.Input.mapOptionalInputValue<OverheadPatchNodeK8sIoV1beta1, Map<String, dynamic>>(overhead, (value) => value.toMap()),
      'scheduling': ?pulumi.Input.mapOptionalInputValue<SchedulingPatchNodeK8sIoV1beta1, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
    };
  }

  factory RuntimeClassPatchNodeK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RuntimeClassPatchNodeK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      handler: map['handler'] == null ? null : pulumi.Output.create<String>(map['handler'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      overhead: map['overhead'] == null ? null : pulumi.Output.create<OverheadPatchNodeK8sIoV1beta1>(OverheadPatchNodeK8sIoV1beta1.fromMap((map['overhead'] as Map).cast<String, dynamic>())),
      scheduling: map['scheduling'] == null ? null : pulumi.Output.create<SchedulingPatchNodeK8sIoV1beta1>(SchedulingPatchNodeK8sIoV1beta1.fromMap((map['scheduling'] as Map).cast<String, dynamic>())),
    );
  }
}

