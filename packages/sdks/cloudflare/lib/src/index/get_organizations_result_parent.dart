// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsResultParent {
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;

  /// Creates a new [GetOrganizationsResultParent].
  /// [id] Required.
  /// [name] Required.
  const GetOrganizationsResultParent({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetOrganizationsResultParent.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsResultParent(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
