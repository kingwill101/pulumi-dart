// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParentReference describes a reference to a parent object.
class ParentReferenceNetworkingK8sIoV1alpha1 {
  /// Group is the group of the object being referenced.
  final pulumi.Input<String>? group;

  /// Name is the name of the object being referenced.
  final pulumi.Input<String> name;

  /// Namespace is the namespace of the object being referenced.
  final pulumi.Input<String>? namespace;

  /// Resource is the resource of the object being referenced.
  final pulumi.Input<String> resource;

  /// UID is the uid of the object being referenced.
  final pulumi.Input<String>? uid;

  /// Creates a new [ParentReferenceNetworkingK8sIoV1alpha1].
  /// [group] Group is the group of the object being referenced.
  /// [name] Name is the name of the object being referenced.
  /// [namespace] Namespace is the namespace of the object being referenced.
  /// [resource] Resource is the resource of the object being referenced.
  /// [uid] UID is the uid of the object being referenced.
  ParentReferenceNetworkingK8sIoV1alpha1({
    this.group,
    required this.name,
    this.namespace,
    required this.resource,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': name,
      'namespace': ?namespace,
      'resource': resource,
      'uid': ?uid,
    };
  }

  factory ParentReferenceNetworkingK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ParentReferenceNetworkingK8sIoV1alpha1(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
