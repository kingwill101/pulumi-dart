// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionMessageTransformAiInferenceUnstructuredInference {
  /// A parameters object to be included in each inference request.
  /// The parameters object is combined with the data field of the Pub/Sub
  /// message to form the inference request.
  final pulumi.Input<Map<String, String>?>? parameters;

  /// Creates a new [SubscriptionMessageTransformAiInferenceUnstructuredInference].
  /// [parameters] A parameters object to be included in each inference request.
  const SubscriptionMessageTransformAiInferenceUnstructuredInference({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
    };
  }

  factory SubscriptionMessageTransformAiInferenceUnstructuredInference.fromMap(Map<String, dynamic> map) {
    return SubscriptionMessageTransformAiInferenceUnstructuredInference(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
