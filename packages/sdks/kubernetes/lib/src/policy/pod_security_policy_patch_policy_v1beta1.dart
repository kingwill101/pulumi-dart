import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_security_policy_patch_args.dart';
import 'pod_security_policy_spec_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodSecurityPolicy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
class PodSecurityPolicyPatchPolicyV1beta1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// spec defines the policy enforced.
  late final pulumi.Output<PodSecurityPolicySpecPatch?> spec;

  /// Creates a new [PodSecurityPolicyPatchPolicyV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSecurityPolicyPatchPolicyV1beta1]. {@macro pulumi_policy_v1beta1_pod_security_policy_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSecurityPolicyPatchPolicyV1beta1(
    String name, {
    PodSecurityPolicyPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:policy/v1beta1:PodSecurityPolicyPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<PodSecurityPolicySpecPatch?>('spec');
  }
}
