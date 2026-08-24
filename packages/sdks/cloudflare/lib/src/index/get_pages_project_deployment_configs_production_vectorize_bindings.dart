// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionVectorizeBindings].
  /// [indexName] Required.
  const GetPagesProjectDeploymentConfigsProductionVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
