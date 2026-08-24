// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
