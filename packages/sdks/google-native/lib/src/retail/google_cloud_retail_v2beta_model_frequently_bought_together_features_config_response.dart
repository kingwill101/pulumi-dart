// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional configs for the frequently-bought-together model type.
class GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse {
  /// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  final pulumi.Input<String> contextProductsType;

  /// Creates a new [GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse].
  /// [contextProductsType] Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse({
    required this.contextProductsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contextProductsType': contextProductsType};
  }

  factory GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse(
      contextProductsType: pulumi.Input.fromValue(
        map['contextProductsType'] as String,
      ),
    );
  }
}
