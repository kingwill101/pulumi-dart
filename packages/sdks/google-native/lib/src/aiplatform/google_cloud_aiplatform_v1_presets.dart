// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_presets_modality.dart';
import 'google_cloud_aiplatform_v1_presets_query.dart';

/// Preset configuration for example-based explanations
class GoogleCloudAiplatformV1Presets {
  /// The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  final pulumi.Input<GoogleCloudAiplatformV1PresetsModality>? modality;
  /// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  final pulumi.Input<GoogleCloudAiplatformV1PresetsQuery>? query;

  /// Creates a new [GoogleCloudAiplatformV1Presets].
  /// [modality] The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  /// [query] Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  GoogleCloudAiplatformV1Presets({
    this.modality,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PresetsModality, String>(modality, (value) => value.value),
      'query': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PresetsQuery, String>(query, (value) => value.value),
    };
  }

  factory GoogleCloudAiplatformV1Presets.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Presets(
      modality: map['modality'] == null ? null : (GoogleCloudAiplatformV1PresetsModality.fromValue(map['modality'] as String)).input(),
      query: map['query'] == null ? null : (GoogleCloudAiplatformV1PresetsQuery.fromValue(map['query'] as String)).input(),
    );
  }
}

