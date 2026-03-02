// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for solution object supported by the OperationsManagement resource provider.
class SolutionPlan {
  /// name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  final pulumi.Input<String>? name;
  /// name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/<solutionType>. This is case sensitive
  final pulumi.Input<String>? product;
  /// promotionCode, Not really used now, can you left as empty
  final pulumi.Input<String>? promotionCode;
  /// Publisher name. For gallery solution, it is Microsoft.
  final pulumi.Input<String>? publisher;

  /// Creates a new [SolutionPlan].
  /// [name] name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  /// [product] name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/<solutionType>. This is case sensitive
  /// [promotionCode] promotionCode, Not really used now, can you left as empty
  /// [publisher] Publisher name. For gallery solution, it is Microsoft.
  SolutionPlan({
    this.name,
    this.product,
    this.promotionCode,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'promotionCode': ?promotionCode,
      'publisher': ?publisher,
    };
  }

  factory SolutionPlan.fromMap(Map<String, dynamic> map) {
    return SolutionPlan(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      product: map['product'] == null ? null : (map['product'] as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode'] as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
    );
  }
}

