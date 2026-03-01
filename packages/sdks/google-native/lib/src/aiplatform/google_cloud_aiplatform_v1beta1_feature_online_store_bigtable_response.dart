// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable_auto_scaling_response.dart';

class GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse {
  /// Autoscaling config applied to Bigtable Instance.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse autoScaling;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse({
    required this.autoScaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaling': autoScaling.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse(
      autoScaling: GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse.fromMap((map['autoScaling'] as Map).cast<String, dynamic>()),
    );
  }
}

