// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2ModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final pulumi.Input<GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig>? frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2ModelModelFeaturesConfig].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2ModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig, Map<String, dynamic>>(frequentlyBoughtTogetherConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2ModelModelFeaturesConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2ModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig: map['frequentlyBoughtTogetherConfig'] == null ? null : (GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig.fromMap((map['frequentlyBoughtTogetherConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

