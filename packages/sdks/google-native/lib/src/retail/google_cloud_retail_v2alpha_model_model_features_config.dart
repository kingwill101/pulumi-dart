// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2alphaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final pulumi.Input<GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig>? frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2alphaModelModelFeaturesConfig].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2alphaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig, Map<String, dynamic>>(frequentlyBoughtTogetherConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig: (() { final guardedValue = map['frequentlyBoughtTogetherConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

