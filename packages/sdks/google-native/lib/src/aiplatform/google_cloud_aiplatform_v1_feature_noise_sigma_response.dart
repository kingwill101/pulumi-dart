// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_noise_sigma_noise_sigma_for_feature_response.dart';

/// Noise sigma by features. Noise sigma represents the standard deviation of the gaussian kernel that will be used to add noise to interpolated inputs prior to computing gradients.
class GoogleCloudAiplatformV1FeatureNoiseSigmaResponse {
  /// Noise sigma per feature. No noise is added to features that are not set.
  final pulumi.Input<List<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse>> noiseSigma;

  /// Creates a new [GoogleCloudAiplatformV1FeatureNoiseSigmaResponse].
  /// [noiseSigma] Noise sigma per feature. No noise is added to features that are not set.
  const GoogleCloudAiplatformV1FeatureNoiseSigmaResponse({
    required this.noiseSigma,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noiseSigma': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse>, List<Map<String, dynamic>>>(noiseSigma, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudAiplatformV1FeatureNoiseSigmaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureNoiseSigmaResponse(
      noiseSigma: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse>(map['noiseSigma']!, (value) => GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

