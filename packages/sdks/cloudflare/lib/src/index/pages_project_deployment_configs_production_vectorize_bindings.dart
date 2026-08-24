// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [PagesProjectDeploymentConfigsProductionVectorizeBindings].
  /// [indexName] Required.
  const PagesProjectDeploymentConfigsProductionVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory PagesProjectDeploymentConfigsProductionVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
