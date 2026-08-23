// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_message_transform_ai_inference_unstructured_inference.dart';

class TopicMessageTransformAiInference {
  /// The endpoint to a Vertex AI model of the form
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}` or
  /// `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`.
  /// Vertex AI API requests will be sent to this endpoint.
  final pulumi.Input<String> endpoint;
  /// The service account to use to make prediction requests against
  /// endpoints.
  final pulumi.Input<String>? serviceAccountEmail;
  /// Configuration for making inferences using arbitrary JSON payloads.
  /// Structure is documented below.
  final pulumi.Input<TopicMessageTransformAiInferenceUnstructuredInference>? unstructuredInference;

  /// Creates a new [TopicMessageTransformAiInference].
  /// [endpoint] The endpoint to a Vertex AI model of the form
  /// [serviceAccountEmail] The service account to use to make prediction requests against
  /// [unstructuredInference] Configuration for making inferences using arbitrary JSON payloads.
  const TopicMessageTransformAiInference({
    required this.endpoint,
    this.serviceAccountEmail,
    this.unstructuredInference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'serviceAccountEmail': ?serviceAccountEmail,
      'unstructuredInference': ?pulumi.Input.mapOptionalInputValue<TopicMessageTransformAiInferenceUnstructuredInference, Map<String, dynamic>>(unstructuredInference, (value) => value.toMap()),
    };
  }

  factory TopicMessageTransformAiInference.fromMap(Map<String, dynamic> map) {
    return TopicMessageTransformAiInference(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unstructuredInference: (() { final guardedValue = map['unstructuredInference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicMessageTransformAiInferenceUnstructuredInference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
