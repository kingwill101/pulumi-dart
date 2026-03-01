// ignore_for_file: unused_element, unnecessary_cast

import 'sku_definition.dart';

class Sku {
  /// Gets or set the SKU.
  final SkuDefinition? name;

  /// Creates a new [Sku].
  /// [name] Gets or set the SKU.
  Sku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name == null ? null : name!.value,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] == null ? null : SkuDefinition.fromValue(map['name'] as String),
    );
  }
}

