// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku of this Bastion Host.
class Sku {
  /// The name of the sku of this Bastion Host.
  final pulumi.Input<String>? name;

  /// Creates a new [Sku].
  /// [name] The name of the sku of this Bastion Host.
  const Sku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
