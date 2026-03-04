import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'node_args.dart';
import 'node_spec.dart';
import 'node_status.dart';

/// Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).
class NodeCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec defines the behavior of a node. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NodeSpec> spec;

  /// Most recently observed status of the node. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NodeStatus?> status;

  /// Creates a new [NodeCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeCoreV1]. {@macro pulumi_core_v1_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeCoreV1(
    String name, {
    NodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:Node',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<NodeSpec>('spec');
    status = registerOutput<NodeStatus?>('status');
  }
}
