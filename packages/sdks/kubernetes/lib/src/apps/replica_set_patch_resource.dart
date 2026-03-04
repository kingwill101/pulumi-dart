import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'replica_set_patch_apps_v1beta2_args.dart';
import 'replica_set_spec_patch_apps_v1beta2.dart';
import 'replica_set_status_patch_apps_v1beta2.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ReplicaSet ensures that a specified number of pod replicas are running at any given time.
class ReplicaSetPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages. Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Spec defines the specification of the desired behavior of the ReplicaSet. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicaSetSpecPatchAppsV1beta2?> spec;

  /// Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ReplicaSetStatusPatchAppsV1beta2?> status;

  /// Creates a new [ReplicaSetPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaSetPatchResource]. {@macro pulumi_apps_v1beta2_replica_set_patch_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaSetPatchResource(
    String name, {
    ReplicaSetPatchAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1beta2:ReplicaSetPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<ReplicaSetSpecPatchAppsV1beta2?>('spec');
    status = registerOutput<ReplicaSetStatusPatchAppsV1beta2?>('status');
  }
}
