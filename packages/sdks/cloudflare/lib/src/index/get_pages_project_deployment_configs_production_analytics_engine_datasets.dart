// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets {
  /// Name of the dataset.
  final pulumi.Input<String> dataset;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets].
  /// [dataset] Name of the dataset.
  const GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
