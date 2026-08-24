// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneTenantUnit {
  /// Identifier
  final pulumi.Input<String> id;

  /// Creates a new [GetZoneTenantUnit].
  /// [id] Identifier
  const GetZoneTenantUnit({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZoneTenantUnit.fromMap(Map<String, dynamic> map) {
    return GetZoneTenantUnit(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
