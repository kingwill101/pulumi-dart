// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_examples_example_gcs_source.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';
import 'google_cloud_aiplatform_v1beta1_presets.dart';

/// Example-based explainability that returns the nearest neighbors from the provided dataset.
class GoogleCloudAiplatformV1beta1Examples {
  /// The Cloud Storage input instances.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource>? exampleGcsSource;
  /// The Cloud Storage locations that contain the instances to be indexed for approximate nearest neighbor search.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsSource>? gcsSource;
  /// The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  final pulumi.Input<dynamic>? nearestNeighborSearchConfig;
  /// The number of neighbors to return when querying for examples.
  final pulumi.Input<int>? neighborCount;
  /// Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  final pulumi.Input<GoogleCloudAiplatformV1beta1Presets>? presets;

  /// Creates a new [GoogleCloudAiplatformV1beta1Examples].
  /// [exampleGcsSource] The Cloud Storage input instances.
  /// [gcsSource] The Cloud Storage locations that contain the instances to be indexed for approximate nearest neighbor search.
  /// [nearestNeighborSearchConfig] The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  /// [neighborCount] The number of neighbors to return when querying for examples.
  /// [presets] Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  GoogleCloudAiplatformV1beta1Examples({
    this.exampleGcsSource,
    this.gcsSource,
    this.nearestNeighborSearchConfig,
    this.neighborCount,
    this.presets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exampleGcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource, Map<String, dynamic>>(exampleGcsSource, (value) => value.toMap()),
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1GcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'nearestNeighborSearchConfig': ?nearestNeighborSearchConfig,
      'neighborCount': ?neighborCount,
      'presets': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1Presets, Map<String, dynamic>>(presets, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1Examples.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1Examples(
      exampleGcsSource: map['exampleGcsSource'] == null ? null : (GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource.fromMap((map['exampleGcsSource'] as Map).cast<String, dynamic>())).input(),
      gcsSource: map['gcsSource'] == null ? null : (GoogleCloudAiplatformV1beta1GcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
      nearestNeighborSearchConfig: map['nearestNeighborSearchConfig'] == null ? null : (map['nearestNeighborSearchConfig']).input(),
      neighborCount: map['neighborCount'] == null ? null : (map['neighborCount'] as int).input(),
      presets: map['presets'] == null ? null : (GoogleCloudAiplatformV1beta1Presets.fromMap((map['presets'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

