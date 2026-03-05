// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_featurestore_online_serving_config_scaling_response.dart';

/// OnlineServingConfig specifies the details for provisioning online serving resources.
class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigResponse {
  /// The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  final pulumi.Input<int> fixedNodeCount;
  /// Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  final pulumi.Input<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScalingResponse> scaling;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigResponse].
  /// [fixedNodeCount] The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  /// [scaling] Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigResponse({
    required this.fixedNodeCount,
    required this.scaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedNodeCount': fixedNodeCount,
      'scaling': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScalingResponse, Map<String, dynamic>>(scaling, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigResponse(
      fixedNodeCount: pulumi.Input.fromValue(map['fixedNodeCount'] as int),
      scaling: pulumi.Input.fromValue(GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScalingResponse.fromMap((map['scaling']! as Map).cast<String, dynamic>())),
    );
  }
}

