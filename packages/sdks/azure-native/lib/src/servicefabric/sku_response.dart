// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Fabric managed cluster Sku definition
class SkuResponse {
  /// Sku Name.
  final pulumi.Input<String> name;

  /// Creates a new [SkuResponse].
  /// [name] Sku Name.
  SkuResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(name: pulumi.Input.fromValue(map['name'] as String));
  }
}
