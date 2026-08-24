// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings].
  /// [indexName] Required.
  const GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
