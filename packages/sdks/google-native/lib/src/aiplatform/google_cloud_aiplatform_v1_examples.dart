// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_examples_example_gcs_source.dart';
import 'google_cloud_aiplatform_v1_presets.dart';

/// Example-based explainability that returns the nearest neighbors from the provided dataset.
class GoogleCloudAiplatformV1Examples {
  /// The Cloud Storage input instances.
  final pulumi.Input<GoogleCloudAiplatformV1ExamplesExampleGcsSource>? exampleGcsSource;
  /// The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  final pulumi.Input<dynamic>? nearestNeighborSearchConfig;
  /// The number of neighbors to return when querying for examples.
  final pulumi.Input<int>? neighborCount;
  /// Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  final pulumi.Input<GoogleCloudAiplatformV1Presets>? presets;

  /// Creates a new [GoogleCloudAiplatformV1Examples].
  /// [exampleGcsSource] The Cloud Storage input instances.
  /// [nearestNeighborSearchConfig] The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  /// [neighborCount] The number of neighbors to return when querying for examples.
  /// [presets] Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  const GoogleCloudAiplatformV1Examples({
    this.exampleGcsSource,
    this.nearestNeighborSearchConfig,
    this.neighborCount,
    this.presets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exampleGcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ExamplesExampleGcsSource, Map<String, dynamic>>(exampleGcsSource, (value) => value.toMap()),
      'nearestNeighborSearchConfig': ?nearestNeighborSearchConfig,
      'neighborCount': ?neighborCount,
      'presets': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1Presets, Map<String, dynamic>>(presets, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1Examples.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Examples(
      exampleGcsSource: (() { final guardedValue = map['exampleGcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1ExamplesExampleGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nearestNeighborSearchConfig: (() { final guardedValue = map['nearestNeighborSearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      neighborCount: (() { final guardedValue = map['neighborCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      presets: (() { final guardedValue = map['presets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1Presets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

