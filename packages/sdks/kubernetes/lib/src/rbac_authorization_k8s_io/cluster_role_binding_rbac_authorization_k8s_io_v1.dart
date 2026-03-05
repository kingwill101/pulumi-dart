import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cluster_role_binding_args.dart';
import 'role_ref.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class ClusterRoleBindingRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;

  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  late final pulumi.Output<RoleRef> roleRef;

  /// Subjects holds references to the objects the role applies to.
  late final pulumi.Output<List<Map<String, dynamic>>> subjects;

  /// Creates a new [ClusterRoleBindingRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleBindingRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleBindingRbacAuthorizationK8sIoV1(
    String name, {
    ClusterRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:rbac.authorization.k8s.io/v1:ClusterRoleBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    roleRef = registerOutput<RoleRef>(
      'roleRef',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RoleRef.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    subjects = registerOutput<List<Map<String, dynamic>>>('subjects');
  }
}
