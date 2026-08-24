// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_guardrails_prompt.dart';
import 'get_ai_gateways_result_guardrails_response.dart';

class GetAiGatewaysResultGuardrails {
  final pulumi.Input<GetAiGatewaysResultGuardrailsPrompt> prompt;
  final pulumi.Input<GetAiGatewaysResultGuardrailsResponse> response;

  /// Creates a new [GetAiGatewaysResultGuardrails].
  /// [prompt] Required.
  /// [response] Required.
  const GetAiGatewaysResultGuardrails({
    required this.prompt,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prompt': pulumi.Input.mapInputValue<GetAiGatewaysResultGuardrailsPrompt, Map<String, dynamic>>(prompt, (value) => value.toMap()),
      'response': pulumi.Input.mapInputValue<GetAiGatewaysResultGuardrailsResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory GetAiGatewaysResultGuardrails.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultGuardrails(
      prompt: pulumi.Input.fromValue(GetAiGatewaysResultGuardrailsPrompt.fromMap((map['prompt']! as Map).cast<String, dynamic>())),
      response: pulumi.Input.fromValue(GetAiGatewaysResultGuardrailsResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
    );
  }
}
