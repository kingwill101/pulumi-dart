// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the namespace.
class Sku {
  /// Name of this SKU.
  final pulumi.Input<String> name;
  /// The tier of this SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [name] Name of this SKU.
  /// [tier] The tier of this SKU.
  const Sku({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
