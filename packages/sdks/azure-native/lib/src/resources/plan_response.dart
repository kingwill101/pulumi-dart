// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for the resource.
class PlanResponse {
  /// The plan ID.
  final pulumi.Input<String>? name;
  /// The offer ID.
  final pulumi.Input<String>? product;
  /// The promotion code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher ID.
  final pulumi.Input<String>? publisher;
  /// The plan's version.
  final pulumi.Input<String>? version;

  /// Creates a new [PlanResponse].
  /// [name] The plan ID.
  /// [product] The offer ID.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  /// [version] The plan's version.
  const PlanResponse({
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

  factory PlanResponse.fromMap(Map<String, dynamic> map) {
    return PlanResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
