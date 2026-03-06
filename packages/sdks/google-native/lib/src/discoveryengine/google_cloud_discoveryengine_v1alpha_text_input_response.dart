// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_conversation_context_response.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1alphaTextInputResponse {
  /// Conversation context of the input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaConversationContextResponse> context;
  /// Text input.
  final pulumi.Input<String> input;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaTextInputResponse].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  const GoogleCloudDiscoveryengineV1alphaTextInputResponse({
    required this.context,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1alphaConversationContextResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'input': input,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaTextInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaTextInputResponse(
      context: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaConversationContextResponse.fromMap((map['context']! as Map).cast<String, dynamic>())),
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}

