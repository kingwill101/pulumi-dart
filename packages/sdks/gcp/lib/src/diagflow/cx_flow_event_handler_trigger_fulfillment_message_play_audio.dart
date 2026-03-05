// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio {
  /// (Output)
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  ///
  /// &lt;a name="nested_knowledge_connector_settings_trigger_fulfillment_messages_mixed_audio"&gt;&lt;/a&gt;The `mixed_audio` block contains:
  final pulumi.Input<bool>? allowPlaybackInterruption;
  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final pulumi.Input<String> audioUri;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio].
  /// [allowPlaybackInterruption] (Output)
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio({
    this.allowPlaybackInterruption,
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': ?allowPlaybackInterruption,
      'audioUri': audioUri,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio.fromMap(Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio(
      allowPlaybackInterruption: (() { final guardedValue = map['allowPlaybackInterruption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      audioUri: pulumi.Input.fromValue(map['audioUri'] as String),
    );
  }
}

