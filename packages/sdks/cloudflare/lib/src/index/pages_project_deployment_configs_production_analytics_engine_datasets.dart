// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
