// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_featurestore_online_serving_config_scaling.dart';

/// OnlineServingConfig specifies the details for provisioning online serving resources.
class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig {
  /// The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  final pulumi.Input<int>? fixedNodeCount;
  /// Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  final pulumi.Input<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling>? scaling;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig].
  /// [fixedNodeCount] The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  /// [scaling] Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  const GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig({
    this.fixedNodeCount,
    this.scaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedNodeCount': ?fixedNodeCount,
      'scaling': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling, Map<String, dynamic>>(scaling, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig(
      fixedNodeCount: (() { final guardedValue = map['fixedNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaling: (() { final guardedValue = map['scaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

