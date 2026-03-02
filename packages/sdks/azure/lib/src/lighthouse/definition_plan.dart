// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefinitionPlan {
  /// The plan name of the marketplace offer.
  final pulumi.Input<String> name;
  /// The product code of the plan.
  final pulumi.Input<String> product;
  /// The publisher ID of the plan.
  final pulumi.Input<String> publisher;
  /// The version of the plan.
  final pulumi.Input<String> version;

  /// Creates a new [DefinitionPlan].
  /// [name] The plan name of the marketplace offer.
  /// [product] The product code of the plan.
  /// [publisher] The publisher ID of the plan.
  /// [version] The version of the plan.
  DefinitionPlan({
    required this.name,
    required this.product,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
      'version': version,
    };
  }

  factory DefinitionPlan.fromMap(Map<String, dynamic> map) {
    return DefinitionPlan(
      name: (map['name'] as String).input(),
      product: (map['product'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

