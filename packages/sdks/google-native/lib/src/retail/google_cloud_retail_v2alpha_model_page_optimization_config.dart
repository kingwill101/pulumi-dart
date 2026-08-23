// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_panel.dart';
import 'google_cloud_retail_v2alpha_model_page_optimization_config_restriction.dart';

/// The PageOptimizationConfig for model training. This determines how many panels to optimize for, and which serving configs to consider for each panel. The purpose of this model is to optimize which ServingConfig to show on which panels in way that optimizes the visitors shopping journey.
class GoogleCloudRetailV2alphaModelPageOptimizationConfig {
  /// The type of UserEvent this page optimization is shown for. Each page has an associated event type - this will be the corresponding event type for the page that the page optimization model is used on. Supported types: * `add-to-cart`: Products being added to cart. * `detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage viewed * `category-page-view`: Homepage viewed * `shopping-cart-page-view`: User viewing a shopping cart. `home-page-view` only allows models with type `recommended-for-you`. All other page_optimization_event_type allow all Model.types.
  final pulumi.Input<String> pageOptimizationEventType;
  /// A list of panel configurations. Limit = 5.
  final pulumi.Input<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>> panels;
  /// Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multiple panels at once. If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
  final pulumi.Input<GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction>? restriction;

  /// Creates a new [GoogleCloudRetailV2alphaModelPageOptimizationConfig].
  /// [pageOptimizationEventType] The type of UserEvent this page optimization is shown for. Each page has an associated event type - this will be the corresponding event type for the page that the page optimization model is used on. Supported types: * `add-to-cart`: Products being added to cart. * `detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage viewed * `category-page-view`: Homepage viewed * `shopping-cart-page-view`: User viewing a shopping cart. `home-page-view` only allows models with type `recommended-for-you`. All other page_optimization_event_type allow all Model.types.
  /// [panels] A list of panel configurations. Limit = 5.
  /// [restriction] Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multiple panels at once. If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
  const GoogleCloudRetailV2alphaModelPageOptimizationConfig({
    required this.pageOptimizationEventType,
    required this.panels,
    this.restriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pageOptimizationEventType': pageOptimizationEventType,
      'panels': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>, List<Map<String, dynamic>>>(panels, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restriction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction, String>(restriction, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfig(
      pageOptimizationEventType: pulumi.Input.fromValue(map['pageOptimizationEventType'] as String),
      panels: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>(map['panels']!, (value) => GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromMap((value as Map).cast<String, dynamic>()))),
      restriction: (() { final guardedValue = map['restriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction.fromValue(guardedValue as String)); })(),
    );
  }
}
