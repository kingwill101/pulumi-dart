// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for the managed application.
class PlanResponse {
  /// The plan name.
  final pulumi.Input<String> name;
  /// The product code.
  final pulumi.Input<String> product;
  /// The promotion code.
  final pulumi.Input<String?>? promotionCode;
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
  const PlanResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
