// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
class GoogleCloudAiplatformV1beta1SampledShapleyAttribution {
  /// The number of feature permutations to consider when approximating the Shapley values. Valid range of its value is [1, 50], inclusively.
  final pulumi.Input<int> pathCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1SampledShapleyAttribution].
  /// [pathCount] The number of feature permutations to consider when approximating the Shapley values. Valid range of its value is [1, 50], inclusively.
  GoogleCloudAiplatformV1beta1SampledShapleyAttribution({
    required this.pathCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pathCount': pathCount};
  }

  factory GoogleCloudAiplatformV1beta1SampledShapleyAttribution.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SampledShapleyAttribution(
      pathCount: pulumi.Input.fromValue(map['pathCount'] as int),
    );
  }
}
