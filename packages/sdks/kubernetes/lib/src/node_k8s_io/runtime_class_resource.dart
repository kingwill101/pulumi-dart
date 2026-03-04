import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'runtime_class_node_k8s_io_v1alpha1_args.dart';
import 'runtime_class_spec.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md
class RuntimeClassResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the RuntimeClass More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<RuntimeClassSpec> spec;

  /// Creates a new [RuntimeClassResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeClassResource]. {@macro pulumi_node_k8s_io_v1alpha1_runtime_class_node_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeClassResource(
    String name, {
    RuntimeClassNodeK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:node.k8s.io/v1alpha1:RuntimeClass',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<RuntimeClassSpec>('spec');
  }
}
