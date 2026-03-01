// ignore_for_file: unused_element, unnecessary_cast


/// Plan for solution object supported by the OperationsManagement resource provider.
class SolutionPlanResponse {
  /// name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  final String? name;
  /// name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/<solutionType>. This is case sensitive
  final String? product;
  /// promotionCode, Not really used now, can you left as empty
  final String? promotionCode;
  /// Publisher name. For gallery solution, it is Microsoft.
  final String? publisher;

  /// Creates a new [SolutionPlanResponse].
  /// [name] name of the solution to be created. For Microsoft published solution it should be in the format of solutionType(workspaceName). SolutionType part is case sensitive. For third party solution, it can be anything.
  /// [product] name of the solution to enabled/add. For Microsoft published gallery solution it should be in the format of OMSGallery/<solutionType>. This is case sensitive
  /// [promotionCode] promotionCode, Not really used now, can you left as empty
  /// [publisher] Publisher name. For gallery solution, it is Microsoft.
  SolutionPlanResponse({
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

  factory SolutionPlanResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPlanResponse(
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
    );
  }
}

