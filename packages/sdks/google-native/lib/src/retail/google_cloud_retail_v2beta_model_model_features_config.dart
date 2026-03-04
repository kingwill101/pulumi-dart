// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2betaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final pulumi.Input<
    GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
  >?
  frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2betaModelModelFeaturesConfig].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2betaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig,
            Map<String, dynamic>
          >(frequentlyBoughtTogetherConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaModelModelFeaturesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig: (() {
        final guardedValue = map['frequentlyBoughtTogetherConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
