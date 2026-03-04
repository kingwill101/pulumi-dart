// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_conversation_context.dart';

/// Defines text input.
class GoogleCloudDiscoveryengineV1betaTextInput {
  /// Conversation context of the input.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaConversationContext>?
  context;

  /// Text input.
  final pulumi.Input<String>? input;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaTextInput].
  /// [context] Conversation context of the input.
  /// [input] Text input.
  GoogleCloudDiscoveryengineV1betaTextInput({this.context, this.input});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDiscoveryengineV1betaConversationContext,
            Map<String, dynamic>
          >(context, (value) => value.toMap()),
      'input': ?input,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaTextInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1betaTextInput(
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDiscoveryengineV1betaConversationContext.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
