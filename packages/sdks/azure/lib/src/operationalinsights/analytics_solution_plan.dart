// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsSolutionPlan {
  final pulumi.Input<String>? name;
  /// The product name of the solution. For example `OMSGallery/Containers`. Changing this forces a new resource to be created.
  final pulumi.Input<String> product;
  /// A promotion code to be used with the solution. Changing this forces a new resource to be created.
  final pulumi.Input<String>? promotionCode;
  /// The publisher of the solution. For example `Microsoft`. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;

  /// Creates a new [AnalyticsSolutionPlan].
  /// [name] Optional.
  /// [product] The product name of the solution. For example `OMSGallery/Containers`. Changing this forces a new resource to be created.
  /// [promotionCode] A promotion code to be used with the solution. Changing this forces a new resource to be created.
  /// [publisher] The publisher of the solution. For example `Microsoft`. Changing this forces a new resource to be created.
  const AnalyticsSolutionPlan({
    this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
    };
  }

  factory AnalyticsSolutionPlan.fromMap(Map<String, dynamic> map) {
    return AnalyticsSolutionPlan(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: pulumi.Input.fromValue(map['product'] as String),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}
