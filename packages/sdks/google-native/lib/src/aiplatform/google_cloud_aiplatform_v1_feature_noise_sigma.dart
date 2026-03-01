// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_noise_sigma_noise_sigma_for_feature.dart';

/// Noise sigma by features. Noise sigma represents the standard deviation of the gaussian kernel that will be used to add noise to interpolated inputs prior to computing gradients.
class GoogleCloudAiplatformV1FeatureNoiseSigma {
  /// Noise sigma per feature. No noise is added to features that are not set.
  final List<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature>? noiseSigma;

  /// Creates a new [GoogleCloudAiplatformV1FeatureNoiseSigma].
  /// [noiseSigma] Noise sigma per feature. No noise is added to features that are not set.
  GoogleCloudAiplatformV1FeatureNoiseSigma({
    this.noiseSigma,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noiseSigma': ?noiseSigma == null ? null : pulumi.Input.encodeList<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature, Map<String, dynamic>>(noiseSigma!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1FeatureNoiseSigma.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureNoiseSigma(
      noiseSigma: map['noiseSigma'] == null ? null : pulumi.Input.decodeList<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature>(map['noiseSigma'], (value) => GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

