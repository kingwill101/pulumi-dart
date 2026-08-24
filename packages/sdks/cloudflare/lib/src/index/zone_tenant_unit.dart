// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneTenantUnit {
  /// Identifier
  final pulumi.Input<String?>? id;

  /// Creates a new [ZoneTenantUnit].
  /// [id] Identifier
  const ZoneTenantUnit({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ZoneTenantUnit.fromMap(Map<String, dynamic> map) {
    return ZoneTenantUnit(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
