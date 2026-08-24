// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewVectorizeBindings {
  final pulumi.Input<String> indexName;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewVectorizeBindings].
  /// [indexName] Required.
  const GetPagesProjectDeploymentConfigsPreviewVectorizeBindings({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewVectorizeBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewVectorizeBindings(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
