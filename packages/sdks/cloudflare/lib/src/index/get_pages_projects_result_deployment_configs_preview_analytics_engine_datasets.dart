// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
