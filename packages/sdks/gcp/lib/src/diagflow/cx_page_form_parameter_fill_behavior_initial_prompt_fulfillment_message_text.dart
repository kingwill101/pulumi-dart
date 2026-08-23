// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final pulumi.Input<bool>? allowPlaybackInterruption;
  /// A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  /// required: true
  final pulumi.Input<List<String>>? texts;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageText].
  /// [allowPlaybackInterruption] (Output)
  /// [texts] A collection of text response variants. If multiple variants are defined, only one text response variant is returned at runtime.
  const CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageText({
    this.allowPlaybackInterruption,
    this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'texts': ?texts,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageText.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageText(
      allowPlaybackInterruption: (() { final guardedValue = map['allowPlaybackInterruption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      texts: (() { final guardedValue = map['texts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
