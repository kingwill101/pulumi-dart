// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings].
  /// [indexName] Required.
  const GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
