// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch.dart';
import 'subject_patch.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class ClusterRoleBindingPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object's metadata.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// roleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  final pulumi.Input<RoleRefPatch?>? roleRef;
  /// subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectPatch>?>? subjects;

  /// Creates a new [ClusterRoleBindingPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object's metadata.
  /// [roleRef] roleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] subjects holds references to the objects the role applies to.
  const ClusterRoleBindingPatch({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': ?pulumi.Input.mapOptionalInputValue<RoleRefPatch, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<SubjectPatch>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRoleBindingPatch.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBindingPatch(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleRef: (() { final guardedValue = map['roleRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleRefPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjects: (() { final guardedValue = map['subjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectPatch>(guardedValue, (value) => SubjectPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
