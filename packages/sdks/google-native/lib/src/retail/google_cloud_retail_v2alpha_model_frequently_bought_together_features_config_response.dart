// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional configs for the frequently-bought-together model type.
class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse {
  /// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  final pulumi.Input<String> contextProductsType;

  /// Creates a new [GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse].
  /// [contextProductsType] Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse({
    required this.contextProductsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextProductsType': contextProductsType,
    };
  }

  factory GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse(
      contextProductsType: (map['contextProductsType'] as String).input(),
    );
  }
}

