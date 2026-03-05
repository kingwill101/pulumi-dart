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
      'name': ?pulumi.Input.mapOptionalInputValue<SkuDefinition, String>(name, (value) => value.wireValue),
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuDefinition.fromValue(guardedValue as String)); })(),
    );
  }
}

