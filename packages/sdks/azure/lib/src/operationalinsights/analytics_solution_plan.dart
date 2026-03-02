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
  AnalyticsSolutionPlan({
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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: (map['product'] as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode']! as String).input(),
      publisher: (map['publisher'] as String).input(),
    );
  }
}

