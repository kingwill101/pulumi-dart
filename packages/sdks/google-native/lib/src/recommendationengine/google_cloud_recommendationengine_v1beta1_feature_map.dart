// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FeatureMap represents extra features that customers want to include in the recommendation model for catalogs/user events as categorical/numerical features.
class GoogleCloudRecommendationengineV1beta1FeatureMap {
  /// Categorical features that can take on one of a limited number of possible values. Some examples would be the brand/maker of a product, or country of a customer. Feature names and values must be UTF-8 encoded strings. For example: `{ "colors": {"value": ["yellow", "green"]}, "sizes": {"value":["S", "M"]}`
  final pulumi.Input<Map<String, String>>? categoricalFeatures;
  /// Numerical features. Some examples would be the height/weight of a product, or age of a customer. Feature names must be UTF-8 encoded strings. For example: `{ "lengths_cm": {"value":[2.3, 15.4]}, "heights_cm": {"value":[8.1, 6.4]} }`
  final pulumi.Input<Map<String, String>>? numericalFeatures;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1FeatureMap].
  /// [categoricalFeatures] Categorical features that can take on one of a limited number of possible values. Some examples would be the brand/maker of a product, or country of a customer. Feature names and values must be UTF-8 encoded strings. For example: `{ "colors": {"value": ["yellow", "green"]}, "sizes": {"value":["S", "M"]}`
  /// [numericalFeatures] Numerical features. Some examples would be the height/weight of a product, or age of a customer. Feature names must be UTF-8 encoded strings. For example: `{ "lengths_cm": {"value":[2.3, 15.4]}, "heights_cm": {"value":[8.1, 6.4]} }`
  GoogleCloudRecommendationengineV1beta1FeatureMap({
    this.categoricalFeatures,
    this.numericalFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalFeatures': ?categoricalFeatures,
      'numericalFeatures': ?numericalFeatures,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1FeatureMap.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1FeatureMap(
      categoricalFeatures: map['categoricalFeatures'] == null ? null : ((map['categoricalFeatures']! as Map).cast<String, String>()).input(),
      numericalFeatures: map['numericalFeatures'] == null ? null : ((map['numericalFeatures']! as Map).cast<String, String>()).input(),
    );
  }
}

