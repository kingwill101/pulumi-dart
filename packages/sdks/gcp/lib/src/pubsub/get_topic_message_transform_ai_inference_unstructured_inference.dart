// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicMessageTransformAiInferenceUnstructuredInference {
  /// A parameters object to be included in each inference request.
  /// The parameters object is combined with the data field of the Pub/Sub
  /// message to form the inference request.
  final pulumi.Input<Map<String, String>> parameters;

  /// Creates a new [GetTopicMessageTransformAiInferenceUnstructuredInference].
  /// [parameters] A parameters object to be included in each inference request.
  const GetTopicMessageTransformAiInferenceUnstructuredInference({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
    };
  }

  factory GetTopicMessageTransformAiInferenceUnstructuredInference.fromMap(Map<String, dynamic> map) {
    return GetTopicMessageTransformAiInferenceUnstructuredInference(
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
    );
  }
}
