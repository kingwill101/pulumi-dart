// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config_context_products_type.dart';

/// Additional configs for the frequently-bought-together model type.
class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig {
  /// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  final pulumi.Input<GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType>? contextProductsType;

  /// Creates a new [GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig].
  /// [contextProductsType] Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig({
    this.contextProductsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextProductsType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType, String>(contextProductsType, (value) => value.value),
    };
  }

  factory GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig(
      contextProductsType: map['contextProductsType'] == null ? null : (GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType.fromValue(map['contextProductsType'] as String)).input(),
    );
  }
}

