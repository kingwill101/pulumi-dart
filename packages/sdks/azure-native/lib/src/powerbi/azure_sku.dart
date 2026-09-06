// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureSku {
  /// SKU name
  final pulumi.Input<dynamic> name;
  /// SKU tier
  final pulumi.Input<dynamic> tier;

  /// Creates a new [AzureSku].
  /// [name] SKU name
  /// [tier] SKU tier
  const AzureSku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory AzureSku.fromMap(Map<String, dynamic> map) {
    return AzureSku(
      name: pulumi.Input.fromValue(map['name']),
      tier: pulumi.Input.fromValue(map['tier']),
    );
  }
}
