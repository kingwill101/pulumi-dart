// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureStoreOnlineServingConfigScaling {
  /// The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [AiFeatureStoreOnlineServingConfigScaling].
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  const AiFeatureStoreOnlineServingConfigScaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory AiFeatureStoreOnlineServingConfigScaling.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreOnlineServingConfigScaling(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}
