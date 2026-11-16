// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbFindingTypeCategory {
  /// The type of the observation.
  /// Available values: "Issue", "Insight", "Activity".
  final pulumi.Input<String?>? observation;
  /// The product category.
  /// Available values: "SaaS", "Cloud".
  final pulumi.Input<String?>? product;
  /// The type of the finding category.
  /// Available values: "Content", "Posture".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustCasbFindingTypeCategory].
  /// [observation] The type of the observation.
  /// [product] The product category.
  /// [type] The type of the finding category.
  const ZeroTrustCasbFindingTypeCategory({
    this.observation,
    this.product,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observation': ?observation,
      'product': ?product,
      'type': ?type,
    };
  }

  factory ZeroTrustCasbFindingTypeCategory.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbFindingTypeCategory(
      observation: (() { final guardedValue = map['observation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
