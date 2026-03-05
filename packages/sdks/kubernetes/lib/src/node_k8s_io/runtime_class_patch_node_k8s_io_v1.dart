import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'overhead_patch.dart';
import 'runtime_class_patch_args.dart';
import 'scheduling_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/
class RuntimeClassPatchNodeK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  late final pulumi.Output<String?> handler;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
  /// https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/
  late final pulumi.Output<OverheadPatch?> overhead;

  /// scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  late final pulumi.Output<SchedulingPatch?> scheduling;

  /// Creates a new [RuntimeClassPatchNodeK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeClassPatchNodeK8sIoV1]. {@macro pulumi_node_k8s_io_v1_runtime_class_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeClassPatchNodeK8sIoV1(
    String name, {
    RuntimeClassPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:node.k8s.io/v1:RuntimeClassPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    handler = registerOutput<String?>('handler');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMetaPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    overhead = registerOutput<OverheadPatch?>(
      'overhead',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OverheadPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scheduling = registerOutput<SchedulingPatch?>(
      'scheduling',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SchedulingPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
