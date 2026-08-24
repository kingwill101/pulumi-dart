// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneTenant {
  /// Identifier
  final pulumi.Input<String> id;
  /// The name of the Tenant account.
  final pulumi.Input<String> name;

  /// Creates a new [GetZoneTenant].
  /// [id] Identifier
  /// [name] The name of the Tenant account.
  const GetZoneTenant({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZoneTenant.fromMap(Map<String, dynamic> map) {
    return GetZoneTenant(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
