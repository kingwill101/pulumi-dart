// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultTenantUnit {
  /// Identifier
  final pulumi.Input<String> id;

  /// Creates a new [GetZonesResultTenantUnit].
  /// [id] Identifier
  const GetZonesResultTenantUnit({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZonesResultTenantUnit.fromMap(Map<String, dynamic> map) {
    return GetZonesResultTenantUnit(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
