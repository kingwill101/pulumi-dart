// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_explanation_metadata.dart';
import 'google_cloud_aiplatform_v1_explanation_parameters.dart';

/// Specification of Model explanation.
class GoogleCloudAiplatformV1ExplanationSpec {
  /// Optional. Metadata describing the Model's input and output for explanation.
  final pulumi.Input<GoogleCloudAiplatformV1ExplanationMetadata>? metadata;

  /// Parameters that configure explaining of the Model's predictions.
  final pulumi.Input<GoogleCloudAiplatformV1ExplanationParameters> parameters;

  /// Creates a new [GoogleCloudAiplatformV1ExplanationSpec].
  /// [metadata] Optional. Metadata describing the Model's input and output for explanation.
  /// [parameters] Parameters that configure explaining of the Model's predictions.
  GoogleCloudAiplatformV1ExplanationSpec({
    this.metadata,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1ExplanationMetadata,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'parameters':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1ExplanationParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ExplanationSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ExplanationSpec(
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1ExplanationMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameters: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1ExplanationParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
