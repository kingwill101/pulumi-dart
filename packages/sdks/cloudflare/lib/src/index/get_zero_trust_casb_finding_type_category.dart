// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbFindingTypeCategory {
  /// The type of the observation.
  /// Available values: "Issue", "Insight", "Activity".
  final pulumi.Input<String> observation;
  /// The product category.
  /// Available values: "SaaS", "Cloud".
  final pulumi.Input<String> product;
  /// The type of the finding category.
  /// Available values: "Content", "Posture".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustCasbFindingTypeCategory].
  /// [observation] The type of the observation.
  /// [product] The product category.
  /// [type] The type of the finding category.
  const GetZeroTrustCasbFindingTypeCategory({
    required this.observation,
    required this.product,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observation': observation,
      'product': product,
      'type': type,
    };
  }

  factory GetZeroTrustCasbFindingTypeCategory.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypeCategory(
      observation: pulumi.Input.fromValue(map['observation'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
