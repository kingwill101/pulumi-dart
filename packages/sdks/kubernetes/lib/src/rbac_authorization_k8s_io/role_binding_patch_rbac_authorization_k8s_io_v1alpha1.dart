// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch_rbac_authorization_k8s_io_v1alpha1.dart';
import 'subject_patch_rbac_authorization_k8s_io_v1alpha1.dart';

/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBinding, and will no longer be served in v1.20.
class RoleBindingPatchRbacAuthorizationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object's metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final pulumi.Input<RoleRefPatchRbacAuthorizationK8sIoV1alpha1>? roleRef;

  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>>?
  subjects;

  /// Creates a new [RoleBindingPatchRbacAuthorizationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  /// [subjects] Subjects holds references to the objects the role applies to.
  RoleBindingPatchRbacAuthorizationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.roleRef,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectMetaPatch,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'roleRef':
          ?pulumi.Input.mapOptionalInputValue<
            RoleRefPatchRbacAuthorizationK8sIoV1alpha1,
            Map<String, dynamic>
          >(roleRef, (value) => value.toMap()),
      'subjects':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubjectPatchRbacAuthorizationK8sIoV1alpha1>,
            List<Map<String, dynamic>>
          >(
            subjects,
            (value) =>
                pulumi.Input.encodeList<
                  SubjectPatchRbacAuthorizationK8sIoV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RoleBindingPatchRbacAuthorizationK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RoleBindingPatchRbacAuthorizationK8sIoV1alpha1(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMetaPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roleRef: (() {
        final guardedValue = map['roleRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleRefPatchRbacAuthorizationK8sIoV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subjects: (() {
        final guardedValue = map['subjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubjectPatchRbacAuthorizationK8sIoV1alpha1>(
            guardedValue,
            (value) => SubjectPatchRbacAuthorizationK8sIoV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
