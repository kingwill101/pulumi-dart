// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Noise sigma for a single feature.
class GoogleCloudAiplatformV1beta1FeatureNoiseSigmaNoiseSigmaForFeature {
  /// The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  final pulumi.Input<String>? name;
  /// This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  final pulumi.Input<double>? sigma;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureNoiseSigmaNoiseSigmaForFeature].
  /// [name] The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  /// [sigma] This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  const GoogleCloudAiplatformV1beta1FeatureNoiseSigmaNoiseSigmaForFeature({
    this.name,
    this.sigma,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sigma': ?sigma,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureNoiseSigmaNoiseSigmaForFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureNoiseSigmaNoiseSigmaForFeature(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sigma: (() { final guardedValue = map['sigma']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

