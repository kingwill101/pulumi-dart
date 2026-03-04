import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'role_list_rbac_authorization_k8s_io_v1beta1_args.dart';

/// RoleList is a collection of Roles Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleList, and will no longer be served in v1.20.
class RoleListRbacAuthorizationK8sIoV1beta1Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Items is a list of Roles
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [RoleListRbacAuthorizationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleListRbacAuthorizationK8sIoV1beta1Resource]. {@macro pulumi_rbac_authorization_k8s_io_v1beta1_role_list_rbac_authorization_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleListRbacAuthorizationK8sIoV1beta1Resource(
    String name, {
    RoleListRbacAuthorizationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:rbac.authorization.k8s.io/v1beta1:RoleList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata');
  }
}
