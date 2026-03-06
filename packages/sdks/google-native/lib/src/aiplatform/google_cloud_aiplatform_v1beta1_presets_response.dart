// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preset configuration for example-based explanations
class GoogleCloudAiplatformV1beta1PresetsResponse {
  /// The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  final pulumi.Input<String> modality;
  /// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  final pulumi.Input<String> query;

  /// Creates a new [GoogleCloudAiplatformV1beta1PresetsResponse].
  /// [modality] The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  /// [query] Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  const GoogleCloudAiplatformV1beta1PresetsResponse({
    required this.modality,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': modality,
      'query': query,
    };
  }

  factory GoogleCloudAiplatformV1beta1PresetsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PresetsResponse(
      modality: pulumi.Input.fromValue(map['modality'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}

