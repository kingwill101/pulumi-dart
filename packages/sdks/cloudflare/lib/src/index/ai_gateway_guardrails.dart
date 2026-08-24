// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_guardrails_prompt.dart';
import 'ai_gateway_guardrails_response.dart';

class AiGatewayGuardrails {
  final pulumi.Input<AiGatewayGuardrailsPrompt> prompt;
  final pulumi.Input<AiGatewayGuardrailsResponse> response;

  /// Creates a new [AiGatewayGuardrails].
  /// [prompt] Required.
  /// [response] Required.
  const AiGatewayGuardrails({
    required this.prompt,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prompt': pulumi.Input.mapInputValue<AiGatewayGuardrailsPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'response': pulumi.Input.mapInputValue<AiGatewayGuardrailsResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory AiGatewayGuardrails.fromMap(Map<String, dynamic> map) {
    return AiGatewayGuardrails(
      prompt: pulumi.Input.fromValue(AiGatewayGuardrailsPrompt.fromMap((map['prompt']! as Map).cast<String, dynamic>())),
      response: pulumi.Input.fromValue(AiGatewayGuardrailsResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
    );
  }
}
