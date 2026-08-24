// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewVectorizeBindings].
  /// [indexName] Required.
  const PagesProjectDeploymentConfigsPreviewVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
