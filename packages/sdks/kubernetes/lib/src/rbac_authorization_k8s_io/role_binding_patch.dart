// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'role_ref_patch.dart';
import 'subject_patch.dart';

/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
class RoleBindingPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object's metadata.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// roleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  final pulumi.Input<RoleRefPatch?>? roleRef;
  /// subjects holds references to the objects the role applies to.
  final pulumi.Input<List<SubjectPatch>?>? subjects;

  /// Creates a new [RoleBindingPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object's metadata.
  /// [roleRef] roleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error. This field is immutable.
  /// [subjects] subjects holds references to the objects the role applies to.
  const RoleBindingPatch({
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

  factory RoleBindingPatch.fromMap(Map<String, dynamic> map) {
    return RoleBindingPatch(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleRef: (() { final guardedValue = map['roleRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleRefPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjects: (() { final guardedValue = map['subjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectPatch>(guardedValue, (value) => SubjectPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
