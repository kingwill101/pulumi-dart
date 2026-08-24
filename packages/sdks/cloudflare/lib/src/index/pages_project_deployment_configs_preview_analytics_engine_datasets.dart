// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
