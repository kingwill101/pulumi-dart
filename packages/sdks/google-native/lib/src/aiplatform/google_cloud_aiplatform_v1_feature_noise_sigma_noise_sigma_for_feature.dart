// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Noise sigma for a single feature.
class GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature {
  /// The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  final pulumi.Input<String>? name;
  /// This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  final pulumi.Input<double>? sigma;

  /// Creates a new [GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature].
  /// [name] The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  /// [sigma] This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature({
    this.name,
    this.sigma,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sigma': ?sigma,
    };
  }

  factory GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sigma: map['sigma'] == null ? null : (map['sigma'] as double).input(),
    );
  }
}

