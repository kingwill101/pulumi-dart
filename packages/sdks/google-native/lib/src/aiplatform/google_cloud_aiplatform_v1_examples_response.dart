// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_examples_example_gcs_source_response.dart';
import 'google_cloud_aiplatform_v1_presets_response.dart';

/// Example-based explainability that returns the nearest neighbors from the provided dataset.
class GoogleCloudAiplatformV1ExamplesResponse {
  /// The Cloud Storage input instances.
  final pulumi.Input<GoogleCloudAiplatformV1ExamplesExampleGcsSourceResponse> exampleGcsSource;
  /// The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  final pulumi.Input<dynamic> nearestNeighborSearchConfig;
  /// The number of neighbors to return when querying for examples.
  final pulumi.Input<int> neighborCount;
  /// Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  final pulumi.Input<GoogleCloudAiplatformV1PresetsResponse> presets;

  /// Creates a new [GoogleCloudAiplatformV1ExamplesResponse].
  /// [exampleGcsSource] The Cloud Storage input instances.
  /// [nearestNeighborSearchConfig] The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  /// [neighborCount] The number of neighbors to return when querying for examples.
  /// [presets] Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  const GoogleCloudAiplatformV1ExamplesResponse({
    required this.exampleGcsSource,
    required this.nearestNeighborSearchConfig,
    required this.neighborCount,
    required this.presets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exampleGcsSource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ExamplesExampleGcsSourceResponse, Map<String, dynamic>>(exampleGcsSource, (value) => value.toMap()),
      'nearestNeighborSearchConfig': nearestNeighborSearchConfig,
      'neighborCount': neighborCount,
      'presets': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1PresetsResponse, Map<String, dynamic>>(presets, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ExamplesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExamplesResponse(
      exampleGcsSource: pulumi.Input.fromValue(GoogleCloudAiplatformV1ExamplesExampleGcsSourceResponse.fromMap((map['exampleGcsSource']! as Map).cast<String, dynamic>())),
      nearestNeighborSearchConfig: pulumi.Input.fromValue(map['nearestNeighborSearchConfig']),
      neighborCount: pulumi.Input.fromValue(map['neighborCount'] as int),
      presets: pulumi.Input.fromValue(GoogleCloudAiplatformV1PresetsResponse.fromMap((map['presets']! as Map).cast<String, dynamic>())),
    );
  }
}

