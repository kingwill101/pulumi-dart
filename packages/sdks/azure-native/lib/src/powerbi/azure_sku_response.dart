// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureSkuResponse {
  /// SKU name
  final pulumi.Input<String> name;
  /// SKU tier
  final pulumi.Input<String> tier;

  /// Creates a new [AzureSkuResponse].
  /// [name] SKU name
  /// [tier] SKU tier
  const AzureSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory AzureSkuResponse.fromMap(Map<String, dynamic> map) {
    return AzureSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

