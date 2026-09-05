// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TypedLocalObjectReference allows to reference typed object inside the same namespace.
class TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1 {
  /// apiGroup is the group for the resource being referenced. If apiGroup is empty, the specified Kind must be in the core API group. For any other third-party types, setting apiGroup is required. It must be a DNS subdomain.
  final pulumi.Input<String?>? apiGroup;
  /// kind is the type of resource being referenced. It must be a path segment name.
  final pulumi.Input<String?>? kind;
  /// name is the name of resource being referenced. It must be a path segment name.
  final pulumi.Input<String?>? name;

  /// Creates a new [TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1].
  /// [apiGroup] apiGroup is the group for the resource being referenced. If apiGroup is empty, the specified Kind must be in the core API group. For any other third-party types, setting apiGroup is required. It must be a DNS subdomain.
  /// [kind] kind is the type of resource being referenced. It must be a path segment name.
  /// [name] name is the name of resource being referenced. It must be a path segment name.
  const TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1({
    this.apiGroup,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1(
      apiGroup: (() { final guardedValue = map['apiGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
