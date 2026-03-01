// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'role_ref.dart';
import 'subject.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_args_doc}
/// The set of arguments for ClusterRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_args_doc}
class ClusterRoleBindingArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  final pulumi.Input<RoleRef> roleRef;
  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<Subject>>? subjects;

  /// Creates a new [ClusterRoleBindingArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBindingArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    required pulumi.Output<RoleRef> roleRef,
    pulumi.Output<List<Subject>>? subjects,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      roleRef = pulumi.Input.asInput<RoleRef>(roleRef),
      subjects = pulumi.Input.asOptionalInput<List<Subject>>(subjects);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': pulumi.Input.mapInputValue<RoleRef, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<Subject>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBindingArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      roleRef: pulumi.Output.create<RoleRef>(RoleRef.fromMap((map['roleRef'] as Map).cast<String, dynamic>())),
      subjects: map['subjects'] == null ? null : pulumi.Output.create<List<Subject>>(pulumi.Input.decodeList<Subject>(map['subjects'], (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

