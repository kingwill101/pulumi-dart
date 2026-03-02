// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for the resource.
class Plan {
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

  /// Creates a new [Plan].
  /// [name] The plan ID.
  /// [product] The offer ID.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  /// [version] The plan's version.
  Plan({
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

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

