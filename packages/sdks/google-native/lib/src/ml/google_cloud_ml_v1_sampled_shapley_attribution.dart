// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
class GoogleCloudMlV1SampledShapleyAttribution {
  /// The number of feature permutations to consider when approximating the Shapley values.
  final pulumi.Input<int>? numPaths;

  /// Creates a new [GoogleCloudMlV1SampledShapleyAttribution].
  /// [numPaths] The number of feature permutations to consider when approximating the Shapley values.
  GoogleCloudMlV1SampledShapleyAttribution({
    this.numPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numPaths': ?numPaths,
    };
  }

  factory GoogleCloudMlV1SampledShapleyAttribution.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1SampledShapleyAttribution(
      numPaths: (() { final guardedValue = map['numPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

