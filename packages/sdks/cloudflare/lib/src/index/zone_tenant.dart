// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneTenant {
  /// Identifier
  final pulumi.Input<String?>? id;
  /// The name of the Tenant account.
  final pulumi.Input<String?>? name;

  /// Creates a new [ZoneTenant].
  /// [id] Identifier
  /// [name] The name of the Tenant account.
  const ZoneTenant({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ZoneTenant.fromMap(Map<String, dynamic> map) {
    return ZoneTenant(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
