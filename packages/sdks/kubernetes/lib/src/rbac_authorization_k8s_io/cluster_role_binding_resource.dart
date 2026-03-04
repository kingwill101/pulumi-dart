import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cluster_role_binding_rbac_authorization_k8s_io_v1alpha1_args.dart';
import 'role_ref_rbac_authorization_k8s_io_v1alpha1.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBinding, and will no longer be served in v1.20.
class ClusterRoleBindingResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;

  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  late final pulumi.Output<RoleRefRbacAuthorizationK8sIoV1alpha1> roleRef;

  /// Subjects holds references to the objects the role applies to.
  late final pulumi.Output<List<Map<String, dynamic>>> subjects;

  /// Creates a new [ClusterRoleBindingResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleBindingResource]. {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_cluster_role_binding_rbac_authorization_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleBindingResource(
    String name, {
    ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:rbac.authorization.k8s.io/v1alpha1:ClusterRoleBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    roleRef = registerOutput<RoleRefRbacAuthorizationK8sIoV1alpha1>('roleRef');
    subjects = registerOutput<List<Map<String, dynamic>>>('subjects');
  }
}
