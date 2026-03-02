// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final pulumi.Input<bool>? allowPlaybackInterruption;
  /// The SSML text to be synthesized. For more information, see SSML.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final pulumi.Input<String>? ssml;
  /// The raw text to be synthesized.
  /// This field is part of a union field `source`: Only one of `text` or `ssml` may be set.
  final pulumi.Input<String>? text;

  /// Creates a new [CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText].
  /// [allowPlaybackInterruption] (Output)
  /// [ssml] The SSML text to be synthesized. For more information, see SSML.
  /// [text] The raw text to be synthesized.
  CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText({
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

  factory CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText.fromMap(Map<String, dynamic> map) {
    return CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] == null ? null : (map['allowPlaybackInterruption']! as bool).input(),
      ssml: map['ssml'] == null ? null : (map['ssml']! as String).input(),
      text: map['text'] == null ? null : (map['text']! as String).input(),
    );
  }
}

