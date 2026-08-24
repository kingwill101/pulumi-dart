// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
