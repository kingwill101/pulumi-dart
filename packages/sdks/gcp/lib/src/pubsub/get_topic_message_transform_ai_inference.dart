// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_message_transform_ai_inference_unstructured_inference.dart';

class GetTopicMessageTransformAiInference {
  /// The endpoint to a Vertex AI model of the form
  /// 'projects/{project}/locations/{location}/endpoints/{endpoint}' or
  /// 'projects/{project}/locations/{location}/publishers/{publisher}/models/{model}'.
  /// Vertex AI API requests will be sent to this endpoint.
  final pulumi.Input<String> endpoint;
  /// The service account to use to make prediction requests against
  /// endpoints.
  final pulumi.Input<String> serviceAccountEmail;
  /// Configuration for making inferences using arbitrary JSON payloads.
  final pulumi.Input<List<GetTopicMessageTransformAiInferenceUnstructuredInference>> unstructuredInferences;

  /// Creates a new [GetTopicMessageTransformAiInference].
  /// [endpoint] The endpoint to a Vertex AI model of the form
  /// [serviceAccountEmail] The service account to use to make prediction requests against
  /// [unstructuredInferences] Configuration for making inferences using arbitrary JSON payloads.
  const GetTopicMessageTransformAiInference({
    required this.endpoint,
    required this.serviceAccountEmail,
    required this.unstructuredInferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'serviceAccountEmail': serviceAccountEmail,
      'unstructuredInferences': pulumi.Input.mapInputValue<List<GetTopicMessageTransformAiInferenceUnstructuredInference>, List<Map<String, dynamic>>>(unstructuredInferences, (value) => pulumi.Input.encodeList<GetTopicMessageTransformAiInferenceUnstructuredInference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTopicMessageTransformAiInference.fromMap(Map<String, dynamic> map) {
    return GetTopicMessageTransformAiInference(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      unstructuredInferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTopicMessageTransformAiInferenceUnstructuredInference>(map['unstructuredInferences']!, (value) => GetTopicMessageTransformAiInferenceUnstructuredInference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
