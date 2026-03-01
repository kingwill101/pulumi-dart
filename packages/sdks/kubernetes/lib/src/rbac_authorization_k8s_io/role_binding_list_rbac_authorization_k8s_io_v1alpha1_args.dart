// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'role_binding_resource.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1alpha1_role_binding_list_rbac_authorization_k8s_io_v1alpha1_args_doc}
/// The set of arguments for RoleBindingList.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_role_binding_list_rbac_authorization_k8s_io_v1alpha1_args_doc}
class RoleBindingListRbacAuthorizationK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is a list of RoleBindings
  final pulumi.Input<List<RoleBindingResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [RoleBindingListRbacAuthorizationK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is a list of RoleBindings
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  RoleBindingListRbacAuthorizationK8sIoV1alpha1Args({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<List<RoleBindingResource>> items,
    pulumi.Output<String>? kind,
    pulumi.Output<ListMeta>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<RoleBindingResource>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RoleBindingListRbacAuthorizationK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return RoleBindingListRbacAuthorizationK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      items: pulumi.Output.create<List<RoleBindingResource>>((map['items'] as List).cast<RoleBindingResource>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ListMeta>(ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

