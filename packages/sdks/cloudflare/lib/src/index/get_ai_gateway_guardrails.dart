// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_guardrails_prompt.dart';
import 'get_ai_gateway_guardrails_response.dart';

class GetAiGatewayGuardrails {
  final pulumi.Input<GetAiGatewayGuardrailsPrompt> prompt;
  final pulumi.Input<GetAiGatewayGuardrailsResponse> response;

  /// Creates a new [GetAiGatewayGuardrails].
  /// [prompt] Required.
  /// [response] Required.
  const GetAiGatewayGuardrails({
    required this.prompt,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prompt': pulumi.Input.mapInputValue<GetAiGatewayGuardrailsPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'response': pulumi.Input.mapInputValue<GetAiGatewayGuardrailsResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory GetAiGatewayGuardrails.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayGuardrails(
      prompt: pulumi.Input.fromValue(GetAiGatewayGuardrailsPrompt.fromMap((map['prompt']! as Map).cast<String, dynamic>())),
      response: pulumi.Input.fromValue(GetAiGatewayGuardrailsResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
    );
  }
}
