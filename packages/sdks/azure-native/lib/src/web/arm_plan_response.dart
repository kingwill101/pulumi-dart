// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The plan object in Azure Resource Manager, represents a marketplace plan.
class ArmPlanResponse {
  /// The name.
  final pulumi.Input<String?>? name;
  /// The product.
  final pulumi.Input<String?>? product;
  /// The promotion code.
  final pulumi.Input<String?>? promotionCode;
  /// The publisher.
  final pulumi.Input<String?>? publisher;
  /// Version of product.
  final pulumi.Input<String?>? version;

  /// Creates a new [ArmPlanResponse].
  /// [name] The name.
  /// [product] The product.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher.
  /// [version] Version of product.
  const ArmPlanResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
