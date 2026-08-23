// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A candidate to consider for a given panel. Currently only ServingConfig are valid candidates.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate {
  /// This has to be a valid ServingConfig identifier. For example, for a ServingConfig with full name: `projects/*/locations/global/catalogs/default_catalog/servingConfigs/my_candidate_config`, this would be `my_candidate_config`.
  final pulumi.Input<String>? servingConfigId;

  /// Creates a new [GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate].
  /// [servingConfigId] This has to be a valid ServingConfig identifier. For example, for a ServingConfig with full name: `projects/*/locations/global/catalogs/default_catalog/servingConfigs/my_candidate_config`, this would be `my_candidate_config`.
  const GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate({
    this.servingConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servingConfigId': ?servingConfigId,
    };
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(
      servingConfigId: (() { final guardedValue = map['servingConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
