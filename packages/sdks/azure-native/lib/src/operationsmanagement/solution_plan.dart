// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan for solution object supported by the OperationsManagement resource provider.
class SolutionPlan {
  /// name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  final pulumi.Input<String>? name;
  /// name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/&lt;solutionType&gt;. This is case sensitive
  final pulumi.Input<String>? product;
  /// promotionCode, Not really used now, can you left as empty
  final pulumi.Input<String>? promotionCode;
  /// Publisher name. For gallery solution, it is Microsoft.
  final pulumi.Input<String>? publisher;

  /// Creates a new [SolutionPlan].
  /// [name] name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  /// [product] name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/&lt;solutionType&gt;. This is case sensitive
  /// [promotionCode] promotionCode, Not really used now, can you left as empty
  /// [publisher] Publisher name. For gallery solution, it is Microsoft.
  const SolutionPlan({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

