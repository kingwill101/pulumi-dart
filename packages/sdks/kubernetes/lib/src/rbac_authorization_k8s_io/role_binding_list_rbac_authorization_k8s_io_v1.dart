import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'role_binding_list_args.dart';
import 'role_binding_rbac_authorization_k8s_io_v1.dart';

/// RoleBindingList is a collection of RoleBindings
class RoleBindingListRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of RoleBindings
  late final pulumi.Output<List<RoleBindingRbacAuthorizationK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [RoleBindingListRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleBindingListRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_role_binding_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleBindingListRbacAuthorizationK8sIoV1(
    String name, {
    RoleBindingListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1:RoleBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<RoleBindingRbacAuthorizationK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
