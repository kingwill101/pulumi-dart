// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that are associated with a SKU.
class Sku {
  /// The name of the SKU. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? name;

  /// Creates a new [Sku].
  /// [name] The name of the SKU. Required on PUT (CreateOrReplace) requests.
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

