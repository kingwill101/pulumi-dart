// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU that defines the tier and kind of the peering.
class PeeringSkuResponse {
  /// The family of the peering SKU.
  final pulumi.Input<String> family;
  /// The name of the peering SKU.
  final pulumi.Input<String>? name;
  /// The size of the peering SKU.
  final pulumi.Input<String> size;
  /// The tier of the peering SKU.
  final pulumi.Input<String> tier;

  /// Creates a new [PeeringSkuResponse].
  /// [family] The family of the peering SKU.
  /// [name] The name of the peering SKU.
  /// [size] The size of the peering SKU.
  /// [tier] The tier of the peering SKU.
  PeeringSkuResponse({
    required this.family,
    this.name,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': ?name,
      'size': size,
      'tier': tier,
    };
  }

  factory PeeringSkuResponse.fromMap(Map<String, dynamic> map) {
    return PeeringSkuResponse(
      family: (map['family'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      size: (map['size'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

