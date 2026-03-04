import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'role_args.dart';

/// Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
class RoleRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata.
  late final pulumi.Output<ObjectMeta> metadata;

  /// Rules holds all the PolicyRules for this Role
  late final pulumi.Output<List<Map<String, dynamic>>> rules;

  /// Creates a new [RoleRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleRbacAuthorizationK8sIoV1(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:rbac.authorization.k8s.io/v1:Role',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
  }
}
