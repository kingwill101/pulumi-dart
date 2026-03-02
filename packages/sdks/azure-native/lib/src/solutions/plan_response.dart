// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for the managed application.
class PlanResponse {
  /// The plan name.
  final pulumi.Input<String> name;
  /// The product code.
  final pulumi.Input<String> product;
  /// The promotion code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher ID.
  final pulumi.Input<String> publisher;
  /// The plan's version.
  final pulumi.Input<String> version;

  /// Creates a new [PlanResponse].
  /// [name] The plan name.
  /// [product] The product code.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  /// [version] The plan's version.
  PlanResponse({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
      'version': version,
    };
  }

  factory PlanResponse.fromMap(Map<String, dynamic> map) {
    return PlanResponse(
      name: (map['name'] as String).input(),
      product: (map['product'] as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

