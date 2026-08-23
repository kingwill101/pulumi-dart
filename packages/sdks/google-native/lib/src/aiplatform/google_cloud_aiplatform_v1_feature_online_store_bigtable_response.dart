// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_online_store_bigtable_auto_scaling_response.dart';

class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse {
  /// Autoscaling config applied to Bigtable Instance.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse> autoScaling;

  /// Creates a new [GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  const GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse({
    required this.autoScaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaling': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse, Map<String, dynamic>>(autoScaling, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse(
      autoScaling: pulumi.Input.fromValue(GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse.fromMap((map['autoScaling']! as Map).cast<String, dynamic>())),
    );
  }
}
