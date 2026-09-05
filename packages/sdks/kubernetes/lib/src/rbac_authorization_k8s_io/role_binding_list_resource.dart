import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'role_binding_list_rbac_authorization_k8s_io_v1alpha1_args.dart';
import 'role_binding_rbac_authorization_k8s_io_v1alpha1.dart';

/// RoleBindingList is a collection of RoleBindings Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBindingList, and will no longer be served in v1.20.
class RoleBindingListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of RoleBindings
  late final pulumi.Output<List<RoleBindingRbacAuthorizationK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [RoleBindingListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleBindingListResource]. {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_role_binding_list_rbac_authorization_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleBindingListResource(
    String name, {
    RoleBindingListRbacAuthorizationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1alpha1:RoleBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<RoleBindingRbacAuthorizationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleBindingRbacAuthorizationK8sIoV1alpha1>(guardedValue, (value) => RoleBindingRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [RoleBindingListResource] resource.
  RoleBindingListResource.reference(String urn)
    : super(
        'kubernetes:rbac.authorization.k8s.io/v1alpha1:RoleBindingList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<RoleBindingRbacAuthorizationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleBindingRbacAuthorizationK8sIoV1alpha1>(guardedValue, (value) => RoleBindingRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
