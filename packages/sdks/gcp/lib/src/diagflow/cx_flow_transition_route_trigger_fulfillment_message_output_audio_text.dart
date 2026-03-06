// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final pulumi.Input<bool>? allowPlaybackInterruption;
  /// The SSML text to be synthesized. For more information, see SSML.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final pulumi.Input<String>? ssml;
  /// The raw text to be synthesized.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final pulumi.Input<String>? text;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioText].
  /// [allowPlaybackInterruption] (Output)
  /// [ssml] The SSML text to be synthesized. For more information, see SSML.
  /// [text] The raw text to be synthesized.
  const CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'ssml': ?ssml,
      'text': ?text,
    };
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioText.fromMap(Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillmentMessageOutputAudioText(
      allowPlaybackInterruption: (() { final guardedValue = map['allowPlaybackInterruption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssml: (() { final guardedValue = map['ssml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

