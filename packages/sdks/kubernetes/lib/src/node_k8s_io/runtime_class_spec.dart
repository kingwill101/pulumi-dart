// ignore_for_file: unused_element, unnecessary_cast

import 'overhead_node_k8s_io_v1alpha1.dart';
import 'scheduling_node_k8s_io_v1alpha1.dart';

/// RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
class RuntimeClassSpec {
  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
  final OverheadNodeK8sIoV1alpha1? overhead;
  /// RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
  final String runtimeHandler;
  /// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final SchedulingNodeK8sIoV1alpha1? scheduling;

  /// Creates a new [RuntimeClassSpec].
  /// [overhead] Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
  /// [runtimeHandler] RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
  /// [scheduling] Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  RuntimeClassSpec({
    this.overhead,
    required this.runtimeHandler,
    this.scheduling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overhead': ?overhead == null ? null : overhead!.toMap(),
      'runtimeHandler': runtimeHandler,
      'scheduling': ?scheduling == null ? null : scheduling!.toMap(),
    };
  }

  factory RuntimeClassSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeClassSpec(
      overhead: map['overhead'] == null ? null : OverheadNodeK8sIoV1alpha1.fromMap((map['overhead'] as Map).cast<String, dynamic>()),
      runtimeHandler: map['runtimeHandler'] as String,
      scheduling: map['scheduling'] == null ? null : SchedulingNodeK8sIoV1alpha1.fromMap((map['scheduling'] as Map).cast<String, dynamic>()),
    );
  }
}

