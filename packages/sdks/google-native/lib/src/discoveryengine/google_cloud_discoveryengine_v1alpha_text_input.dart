// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_conversation_context.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1alphaTextInput {
  /// Conversation context of the input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaConversationContext>? context;
  /// Text input.
  final pulumi.Input<String>? input;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaTextInput].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  const GoogleCloudDiscoveryengineV1alphaTextInput({
    this.context,
    this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaConversationContext, Map<String, dynamic>>(context, (value) => value.toMap()),
      'input': ?input,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaTextInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaTextInput(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaConversationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
