// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultTenant {
  /// Identifier
  final pulumi.Input<String> id;
  /// The name of the Tenant account.
  final pulumi.Input<String> name;

  /// Creates a new [GetZonesResultTenant].
  /// [id] Identifier
  /// [name] The name of the Tenant account.
  const GetZonesResultTenant({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZonesResultTenant.fromMap(Map<String, dynamic> map) {
    return GetZonesResultTenant(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
