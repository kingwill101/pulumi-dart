// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ObjectReference contains enough information to let you inspect or modify the referred object.
class ObjectReference {
  /// API version of the referent.
  final pulumi.Input<String>? apiVersion;
  /// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
  final pulumi.Input<String>? fieldPath;
  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String>? name;
  /// Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
  final pulumi.Input<String>? namespace;
  /// Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  final pulumi.Input<String>? resourceVersion;
  /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
  final pulumi.Input<String>? uid;

  /// Creates a new [ObjectReference].
  /// [apiVersion] API version of the referent.
  /// [fieldPath] If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
  /// [kind] Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [namespace] Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
  /// [resourceVersion] Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  /// [uid] UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
  ObjectReference({
    this.apiVersion,
    this.fieldPath,
    this.kind,
    this.name,
    this.namespace,
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'fieldPath': ?fieldPath,
      'kind': ?kind,
      'name': ?name,
      'namespace': ?namespace,
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory ObjectReference.fromMap(Map<String, dynamic> map) {
    return ObjectReference(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      fieldPath: map['fieldPath'] == null ? null : (map['fieldPath'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      resourceVersion: map['resourceVersion'] == null ? null : (map['resourceVersion'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
    );
  }
}

