import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'overhead_node_k8s_io_v1beta1.dart';
import 'runtime_class_node_k8s_io_v1beta1_args.dart';
import 'scheduling_node_k8s_io_v1beta1.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md
class RuntimeClassNodeK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must conform to the DNS Label (RFC 1123) requirements, and is immutable.
  late final pulumi.Output<String> handler;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.
  late final pulumi.Output<OverheadNodeK8sIoV1beta1> overhead;

  /// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  late final pulumi.Output<SchedulingNodeK8sIoV1beta1> scheduling;

  /// Creates a new [RuntimeClassNodeK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeClassNodeK8sIoV1beta1Resource]. {@macro pulumi_node_k8s_io_v1beta1_runtime_class_node_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeClassNodeK8sIoV1beta1Resource(
    String name, {
    RuntimeClassNodeK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:node.k8s.io/v1beta1:RuntimeClass',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    handler = registerOutput<String>('handler');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    overhead = registerOutput<OverheadNodeK8sIoV1beta1>('overhead');
    scheduling = registerOutput<SchedulingNodeK8sIoV1beta1>('scheduling');
  }
}
