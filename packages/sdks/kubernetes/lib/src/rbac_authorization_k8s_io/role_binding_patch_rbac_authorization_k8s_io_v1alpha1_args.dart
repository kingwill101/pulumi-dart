// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch_rbac_authorization_k8s_io_v1alpha1.dart';
import 'subject_patch_rbac_authorization_k8s_io_v1alpha1.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1alpha1_role_binding_patch_rbac_authorization_k8s_io_v1alpha1_args_doc}
/// The set of arguments for RoleBindingPatch.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1alpha1_role_binding_patch_rbac_authorization_k8s_io_v1alpha1_args_doc}
class RoleBindingPatchRbacAuthorizationK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final pulumi.Input<RoleRefPatchRbacAuthorizationK8sIoV1alpha1>? roleRef;
  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>>? subjects;

  /// Creates a new [RoleBindingPatchRbacAuthorizationK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  /// [subjects] Subjects holds references to the objects the role applies to.
  RoleBindingPatchRbacAuthorizationK8sIoV1alpha1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<RoleRefPatchRbacAuthorizationK8sIoV1alpha1>? roleRef,
    pulumi.Output<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>>? subjects,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      roleRef = pulumi.Input.asOptionalInput<RoleRefPatchRbacAuthorizationK8sIoV1alpha1>(roleRef),
      subjects = pulumi.Input.asOptionalInput<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>>(subjects);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': ?pulumi.Input.mapOptionalInputValue<RoleRefPatchRbacAuthorizationK8sIoV1alpha1, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectPatchRbacAuthorizationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoleBindingPatchRbacAuthorizationK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return RoleBindingPatchRbacAuthorizationK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      roleRef: map['roleRef'] == null ? null : pulumi.Output.create<RoleRefPatchRbacAuthorizationK8sIoV1alpha1>(RoleRefPatchRbacAuthorizationK8sIoV1alpha1.fromMap((map['roleRef'] as Map).cast<String, dynamic>())),
      subjects: map['subjects'] == null ? null : pulumi.Output.create<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>>(pulumi.Input.decodeList<SubjectPatchRbacAuthorizationK8sIoV1alpha1>(map['subjects'], (value) => SubjectPatchRbacAuthorizationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

