// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the namespace.
class SkuResponse {
  /// Name of this SKU.
  final pulumi.Input<String> name;
  /// The tier of this SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [name] Name of this SKU.
  /// [tier] The tier of this SKU.
  const SkuResponse({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

