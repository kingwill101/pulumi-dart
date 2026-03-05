// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_action_respond_immediately_response.dart';

class GuardrailActionRespondImmediately {
  /// The canned responses for the agent to choose from. The response is chosen
  /// randomly.
  /// Structure is documented below.
  final pulumi.Input<List<GuardrailActionRespondImmediatelyResponse>> responses;

  /// Creates a new [GuardrailActionRespondImmediately].
  /// [responses] The canned responses for the agent to choose from. The response is chosen
  GuardrailActionRespondImmediately({
    required this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responses': pulumi.Input.mapInputValue<List<GuardrailActionRespondImmediatelyResponse>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<GuardrailActionRespondImmediatelyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuardrailActionRespondImmediately.fromMap(Map<String, dynamic> map) {
    return GuardrailActionRespondImmediately(
      responses: pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailActionRespondImmediatelyResponse>(map['responses']!, (value) => GuardrailActionRespondImmediatelyResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

