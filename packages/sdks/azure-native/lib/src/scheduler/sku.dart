// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_definition.dart';

class Sku {
  /// Gets or set the SKU.
  final pulumi.Input<SkuDefinition>? name;

  /// Creates a new [Sku].
  /// [name] Gets or set the SKU.
  Sku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?pulumi.Input.mapOptionalInputValue<SkuDefinition, String>(name, (value) => value.value),
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] == null ? null : (SkuDefinition.fromValue(map['name']! as String)).input(),
    );
  }
}

