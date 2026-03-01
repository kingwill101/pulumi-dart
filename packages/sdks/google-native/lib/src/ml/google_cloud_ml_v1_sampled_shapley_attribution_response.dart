// ignore_for_file: unused_element, unnecessary_cast


/// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
class GoogleCloudMlV1SampledShapleyAttributionResponse {
  /// The number of feature permutations to consider when approximating the Shapley values.
  final int numPaths;

  /// Creates a new [GoogleCloudMlV1SampledShapleyAttributionResponse].
  /// [numPaths] The number of feature permutations to consider when approximating the Shapley values.
  GoogleCloudMlV1SampledShapleyAttributionResponse({
    required this.numPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numPaths': numPaths,
    };
  }

  factory GoogleCloudMlV1SampledShapleyAttributionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1SampledShapleyAttributionResponse(
      numPaths: map['numPaths'] as int,
    );
  }
}

