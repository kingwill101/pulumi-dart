// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The plan object in Azure Resource Manager, represents a marketplace plan.
class ArmPlanResponse {
  /// The name.
  final pulumi.Input<String>? name;
  /// The product.
  final pulumi.Input<String>? product;
  /// The promotion code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher.
  final pulumi.Input<String>? publisher;
  /// Version of product.
  final pulumi.Input<String>? version;

  /// Creates a new [ArmPlanResponse].
  /// [name] The name.
  /// [product] The product.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher.
  /// [version] Version of product.
  ArmPlanResponse({
    this.name,
    this.product,
    this.promotionCode,
    this.publisher,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'promotionCode': ?promotionCode,
      'publisher': ?publisher,
      'version': ?version,
    };
  }

  factory ArmPlanResponse.fromMap(Map<String, dynamic> map) {
    return ArmPlanResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

