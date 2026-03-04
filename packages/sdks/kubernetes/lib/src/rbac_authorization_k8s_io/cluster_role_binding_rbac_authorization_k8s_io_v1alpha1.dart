// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'role_ref_rbac_authorization_k8s_io_v1alpha1.dart';
import 'subject_rbac_authorization_k8s_io_v1alpha1.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBinding, and will no longer be served in v1.20.
class ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta>? metadata;

  /// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final pulumi.Input<RoleRefRbacAuthorizationK8sIoV1alpha1> roleRef;

  /// Subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectRbacAuthorizationK8sIoV1alpha1>>? subjects;

  /// Creates a new [ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.roleRef,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'roleRef':
          pulumi.Input.mapInputValue<
            RoleRefRbacAuthorizationK8sIoV1alpha1,
            Map<String, dynamic>
          >(roleRef, (value) => value.toMap()),
      'subjects':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubjectRbacAuthorizationK8sIoV1alpha1>,
            List<Map<String, dynamic>>
          >(
            subjects,
            (value) =>
                pulumi.Input.encodeList<
                  SubjectRbacAuthorizationK8sIoV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterRoleBindingRbacAuthorizationK8sIoV1alpha1(
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
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      roleRef: pulumi.Input.fromValue(
        RoleRefRbacAuthorizationK8sIoV1alpha1.fromMap(
          (map['roleRef']! as Map).cast<String, dynamic>(),
        ),
      ),
      subjects: (() {
        final guardedValue = map['subjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubjectRbacAuthorizationK8sIoV1alpha1>(
            guardedValue,
            (value) => SubjectRbacAuthorizationK8sIoV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
