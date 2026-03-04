// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_online_serving_config_scaling.dart';

class AiFeatureStoreOnlineServingConfig {
  /// The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.
  final pulumi.Input<int>? fixedNodeCount;

  /// Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreOnlineServingConfigScaling>? scaling;

  /// Creates a new [AiFeatureStoreOnlineServingConfig].
  /// [fixedNodeCount] The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.
  /// [scaling] Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other.
  AiFeatureStoreOnlineServingConfig({this.fixedNodeCount, this.scaling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedNodeCount': ?fixedNodeCount,
      'scaling':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureStoreOnlineServingConfigScaling,
            Map<String, dynamic>
          >(scaling, (value) => value.toMap()),
    };
  }

  factory AiFeatureStoreOnlineServingConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreOnlineServingConfig(
      fixedNodeCount: (() {
        final guardedValue = map['fixedNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaling: (() {
        final guardedValue = map['scaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureStoreOnlineServingConfigScaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
