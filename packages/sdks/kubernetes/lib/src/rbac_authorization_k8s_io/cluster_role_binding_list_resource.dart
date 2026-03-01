import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_role_binding_list_rbac_authorization_k8s_io_v1alpha1_args.dart';
import 'cluster_role_binding_resource.dart';

/// ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBindings, and will no longer be served in v1.20.
class ClusterRoleBindingListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of ClusterRoleBindings
  late final pulumi.Output<List<ClusterRoleBindingResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterRoleBindingListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleBindingListResource]. {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_cluster_role_binding_list_rbac_authorization_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleBindingListResource(
    String name, {
    ClusterRoleBindingListRbacAuthorizationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1alpha1:ClusterRoleBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ClusterRoleBindingResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
