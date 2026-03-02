// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'role_ref.dart';
import 'subject.dart';

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
class ClusterRoleBinding {
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

  /// Creates a new [ClusterRoleBinding].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [roleRef] RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] Subjects holds references to the objects the role applies to.
  ClusterRoleBinding({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'roleRef': pulumi.Input.mapInputValue<RoleRef, Map<String, dynamic>>(roleRef, (value) => value.toMap()),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<Subject>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRoleBinding.fromMap(Map<String, dynamic> map) {
    return ClusterRoleBinding(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      roleRef: (RoleRef.fromMap((map['roleRef'] as Map).cast<String, dynamic>())).input(),
      subjects: map['subjects'] == null ? null : (pulumi.Input.decodeList<Subject>(map['subjects']!, (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

