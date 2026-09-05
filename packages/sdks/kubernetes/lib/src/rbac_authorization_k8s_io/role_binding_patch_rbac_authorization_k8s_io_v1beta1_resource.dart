import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_binding_patch_rbac_authorization_k8s_io_v1beta1_args.dart';
import 'role_ref_patch_rbac_authorization_k8s_io_v1beta1.dart';
import 'subject_patch_rbac_authorization_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBinding, and will no longer be served in v1.20.
class RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  late final pulumi.Output<RoleRefPatchRbacAuthorizationK8sIoV1beta1?> roleRef;
  /// Subjects holds references to the objects the role applies to.
  late final pulumi.Output<List<SubjectPatchRbacAuthorizationK8sIoV1beta1>?> subjects;

  /// Creates a new [RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource]. {@macro pulumi_rbac_authorization_k8s_io_v1beta1_role_binding_patch_rbac_authorization_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource(
    String name, {
    RoleBindingPatchRbacAuthorizationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1beta1:RoleBindingPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleRef = registerOutput<RoleRefPatchRbacAuthorizationK8sIoV1beta1?>('roleRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleRefPatchRbacAuthorizationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjects = registerOutput<List<SubjectPatchRbacAuthorizationK8sIoV1beta1>?>('subjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubjectPatchRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => SubjectPatchRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource] resource.
  RoleBindingPatchRbacAuthorizationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1beta1:RoleBindingPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleRef = registerOutput<RoleRefPatchRbacAuthorizationK8sIoV1beta1?>('roleRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoleRefPatchRbacAuthorizationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjects = registerOutput<List<SubjectPatchRbacAuthorizationK8sIoV1beta1>?>('subjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubjectPatchRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => SubjectPatchRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
