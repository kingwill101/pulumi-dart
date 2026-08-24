// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneOwner {
  /// Identifier
  final pulumi.Input<String?>? id;
  /// Name of the owner.
  final pulumi.Input<String?>? name;
  /// The type of owner.
  final pulumi.Input<String?>? type;

  /// Creates a new [ZoneOwner].
  /// [id] Identifier
  /// [name] Name of the owner.
  /// [type] The type of owner.
  const ZoneOwner({
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ZoneOwner.fromMap(Map<String, dynamic> map) {
    return ZoneOwner(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
