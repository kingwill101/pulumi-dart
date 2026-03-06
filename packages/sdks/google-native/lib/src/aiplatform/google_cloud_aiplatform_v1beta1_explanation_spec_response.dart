// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_explanation_metadata_response.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_parameters_response.dart';

/// Specification of Model explanation.
class GoogleCloudAiplatformV1beta1ExplanationSpecResponse {
  /// Optional. Metadata describing the Model's input and output for explanation.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExplanationMetadataResponse> metadata;
  /// Parameters that configure explaining of the Model's predictions.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExplanationParametersResponse> parameters;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExplanationSpecResponse].
  /// [metadata] Optional. Metadata describing the Model's input and output for explanation.
  /// [parameters] Parameters that configure explaining of the Model's predictions.
  const GoogleCloudAiplatformV1beta1ExplanationSpecResponse({
    required this.metadata,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ExplanationMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'parameters': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ExplanationParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ExplanationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExplanationSpecResponse(
      metadata: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ExplanationMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      parameters: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ExplanationParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

