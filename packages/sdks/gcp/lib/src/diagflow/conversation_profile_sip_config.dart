// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileSipConfig {
  /// Allows interactions with a Dialogflow virtual agent even if the call is connected for SIPREC purposes.
  final pulumi.Input<bool>? allowVirtualAgentInteraction;
  /// List of inbound call leg headers to be copied to outbound call legs created later.
  final pulumi.Input<List<String>>? copyInboundCallLegHeaders;
  /// Asks Dialogflow Telephony to create the conversation provided in the SIP header on the fly when the call comes in.
  final pulumi.Input<bool>? createConversationOnTheFly;
  /// Ignores any media direction in the reINVITE SDP offer. Reuse the previous media direction.
  final pulumi.Input<bool>? ignoreReinviteMediaDirection;
  /// Starts the conversation with inactive SDP directives
  final pulumi.Input<bool>? inactiveStart;
  /// Keeps the conversation running even if the call is disconnected.
  final pulumi.Input<bool>? keepConversationRunning;
  /// Max duration for audio recording. Overrides the default value of 15 min. Max value is 8 hours.
  final pulumi.Input<String>? maxAudioRecordingDuration;

  /// Creates a new [ConversationProfileSipConfig].
  /// [allowVirtualAgentInteraction] Allows interactions with a Dialogflow virtual agent even if the call is connected for SIPREC purposes.
  /// [copyInboundCallLegHeaders] List of inbound call leg headers to be copied to outbound call legs created later.
  /// [createConversationOnTheFly] Asks Dialogflow Telephony to create the conversation provided in the SIP header on the fly when the call comes in.
  /// [ignoreReinviteMediaDirection] Ignores any media direction in the reINVITE SDP offer. Reuse the previous media direction.
  /// [inactiveStart] Starts the conversation with inactive SDP directives
  /// [keepConversationRunning] Keeps the conversation running even if the call is disconnected.
  /// [maxAudioRecordingDuration] Max duration for audio recording. Overrides the default value of 15 min. Max value is 8 hours.
  const ConversationProfileSipConfig({
    this.allowVirtualAgentInteraction,
    this.copyInboundCallLegHeaders,
    this.createConversationOnTheFly,
    this.ignoreReinviteMediaDirection,
    this.inactiveStart,
    this.keepConversationRunning,
    this.maxAudioRecordingDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVirtualAgentInteraction': ?allowVirtualAgentInteraction,
      'copyInboundCallLegHeaders': ?copyInboundCallLegHeaders,
      'createConversationOnTheFly': ?createConversationOnTheFly,
      'ignoreReinviteMediaDirection': ?ignoreReinviteMediaDirection,
      'inactiveStart': ?inactiveStart,
      'keepConversationRunning': ?keepConversationRunning,
      'maxAudioRecordingDuration': ?maxAudioRecordingDuration,
    };
  }

  factory ConversationProfileSipConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileSipConfig(
      allowVirtualAgentInteraction: (() { final guardedValue = map['allowVirtualAgentInteraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      copyInboundCallLegHeaders: (() { final guardedValue = map['copyInboundCallLegHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createConversationOnTheFly: (() { final guardedValue = map['createConversationOnTheFly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreReinviteMediaDirection: (() { final guardedValue = map['ignoreReinviteMediaDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inactiveStart: (() { final guardedValue = map['inactiveStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keepConversationRunning: (() { final guardedValue = map['keepConversationRunning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAudioRecordingDuration: (() { final guardedValue = map['maxAudioRecordingDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
