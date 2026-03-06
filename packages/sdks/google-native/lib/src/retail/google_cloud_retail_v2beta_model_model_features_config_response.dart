// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_model_frequently_bought_together_features_config_response.dart';

/// Additional model features config.
class GoogleCloudRetailV2betaModelModelFeaturesConfigResponse {
  /// Additional configs for frequently-bought-together models.
  final pulumi.Input<GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse> frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2betaModelModelFeaturesConfigResponse].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  const GoogleCloudRetailV2betaModelModelFeaturesConfigResponse({
    required this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse, Map<String, dynamic>>(frequentlyBoughtTogetherConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaModelModelFeaturesConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaModelModelFeaturesConfigResponse(
      frequentlyBoughtTogetherConfig: pulumi.Input.fromValue(GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap((map['frequentlyBoughtTogetherConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

