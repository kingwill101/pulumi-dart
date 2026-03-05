// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_conversation_context_response.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1betaTextInputResponse {
  /// Conversation context of the input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaConversationContextResponse> context;
  /// Text input.
  final pulumi.Input<String> input;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaTextInputResponse].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1betaTextInputResponse({
    required this.context,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': pulumi.Input.mapInputValue<GoogleCloudDiscoveryengineV1betaConversationContextResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'input': input,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaTextInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaTextInputResponse(
      context: pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaConversationContextResponse.fromMap((map['context']! as Map).cast<String, dynamic>())),
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}

