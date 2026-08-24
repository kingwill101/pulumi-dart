// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationParent {
  final pulumi.Input<String> id;
  final pulumi.Input<String?>? name;

  /// Creates a new [OrganizationParent].
  /// [id] Required.
  /// [name] Optional.
  const OrganizationParent({
    required this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
    };
  }

  factory OrganizationParent.fromMap(Map<String, dynamic> map) {
    return OrganizationParent(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
