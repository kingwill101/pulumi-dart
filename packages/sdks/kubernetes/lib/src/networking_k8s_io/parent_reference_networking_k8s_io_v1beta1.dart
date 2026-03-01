// ignore_for_file: unused_element, unnecessary_cast


/// ParentReference describes a reference to a parent object.
class ParentReferenceNetworkingK8sIoV1beta1 {
  /// Group is the group of the object being referenced.
  final String? group;
  /// Name is the name of the object being referenced.
  final String name;
  /// Namespace is the namespace of the object being referenced.
  final String? namespace;
  /// Resource is the resource of the object being referenced.
  final String resource;

  /// Creates a new [ParentReferenceNetworkingK8sIoV1beta1].
  /// [group] Group is the group of the object being referenced.
  /// [name] Name is the name of the object being referenced.
  /// [namespace] Namespace is the namespace of the object being referenced.
  /// [resource] Resource is the resource of the object being referenced.
  ParentReferenceNetworkingK8sIoV1beta1({
    this.group,
    required this.name,
    this.namespace,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': name,
      'namespace': ?namespace,
      'resource': resource,
    };
  }

  factory ParentReferenceNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ParentReferenceNetworkingK8sIoV1beta1(
      group: map['group'] == null ? null : map['group'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      resource: map['resource'] as String,
    );
  }
}

