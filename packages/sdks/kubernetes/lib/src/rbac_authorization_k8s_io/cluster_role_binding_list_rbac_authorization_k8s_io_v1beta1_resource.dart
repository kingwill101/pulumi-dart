import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_role_binding_list_rbac_authorization_k8s_io_v1beta1_args.dart';
import 'cluster_role_binding_rbac_authorization_k8s_io_v1beta1.dart';

/// ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.20.
class ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of ClusterRoleBindings
  late final pulumi.Output<List<ClusterRoleBindingRbacAuthorizationK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource]. {@macro pulumi_rbac_authorization_k8s_io_v1beta1_cluster_role_binding_list_rbac_authorization_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource(
    String name, {
    ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1beta1:ClusterRoleBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterRoleBindingRbacAuthorizationK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterRoleBindingRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => ClusterRoleBindingRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource] resource.
  ClusterRoleBindingListRbacAuthorizationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1beta1:ClusterRoleBindingList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterRoleBindingRbacAuthorizationK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterRoleBindingRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => ClusterRoleBindingRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
