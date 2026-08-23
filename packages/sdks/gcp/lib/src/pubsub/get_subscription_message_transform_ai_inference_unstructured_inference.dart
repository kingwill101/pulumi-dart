// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionMessageTransformAiInferenceUnstructuredInference {
  /// A parameters object to be included in each inference request.
  /// The parameters object is combined with the data field of the Pub/Sub
  /// message to form the inference request.
  final pulumi.Input<Map<String, String>> parameters;

  /// Creates a new [GetSubscriptionMessageTransformAiInferenceUnstructuredInference].
  /// [parameters] A parameters object to be included in each inference request.
  const GetSubscriptionMessageTransformAiInferenceUnstructuredInference({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
    };
  }

  factory GetSubscriptionMessageTransformAiInferenceUnstructuredInference.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionMessageTransformAiInferenceUnstructuredInference(
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
    );
  }
}
