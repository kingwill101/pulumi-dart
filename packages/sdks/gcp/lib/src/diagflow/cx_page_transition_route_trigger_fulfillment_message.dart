// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_transition_route_trigger_fulfillment_message_conversation_success.dart';
import 'cx_page_transition_route_trigger_fulfillment_message_live_agent_handoff.dart';
import 'cx_page_transition_route_trigger_fulfillment_message_output_audio_text.dart';
import 'cx_page_transition_route_trigger_fulfillment_message_play_audio.dart';
import 'cx_page_transition_route_trigger_fulfillment_message_telephony_transfer_call.dart';
import 'cx_page_transition_route_trigger_fulfillment_message_text.dart';

class CxPageTransitionRouteTriggerFulfillmentMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final pulumi.Input<String>? channel;
  /// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
  /// * In a webhook response when you determine that you handled the customer issue.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess>? conversationSuccess;
  /// Indicates that the conversation should be handed off to a live agent.
  /// Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
  /// * In a webhook response when you determine that the customer issue can only be handled by a human.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff>? liveAgentHandoff;
  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText>? outputAudioText;
  /// Returns a response containing a custom, platform-specific payload.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  final pulumi.Input<String>? payload;
  /// Specifies an audio clip to be played by the client as part of the response.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessagePlayAudio>? playAudio;
  /// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall>? telephonyTransferCall;
  /// The text response message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillmentMessageText>? text;

  /// Creates a new [CxPageTransitionRouteTriggerFulfillmentMessage].
  /// [channel] The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  /// [conversationSuccess] Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// [liveAgentHandoff] Indicates that the conversation should be handed off to a live agent.
  /// [outputAudioText] A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// [payload] Returns a response containing a custom, platform-specific payload.
  /// [playAudio] Specifies an audio clip to be played by the client as part of the response.
  /// [telephonyTransferCall] Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// [text] The text response message.
  const CxPageTransitionRouteTriggerFulfillmentMessage({
    this.channel,
    this.conversationSuccess,
    this.liveAgentHandoff,
    this.outputAudioText,
    this.payload,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'conversationSuccess': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess, Map<String, dynamic>>(conversationSuccess, (value) => value.toMap()),
      'liveAgentHandoff': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff, Map<String, dynamic>>(liveAgentHandoff, (value) => value.toMap()),
      'outputAudioText': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText, Map<String, dynamic>>(outputAudioText, (value) => value.toMap()),
      'payload': ?payload,
      'playAudio': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessagePlayAudio, Map<String, dynamic>>(playAudio, (value) => value.toMap()),
      'telephonyTransferCall': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall, Map<String, dynamic>>(telephonyTransferCall, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillmentMessageText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory CxPageTransitionRouteTriggerFulfillmentMessage.fromMap(Map<String, dynamic> map) {
    return CxPageTransitionRouteTriggerFulfillmentMessage(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conversationSuccess: (() { final guardedValue = map['conversationSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessageConversationSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      liveAgentHandoff: (() { final guardedValue = map['liveAgentHandoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputAudioText: (() { final guardedValue = map['outputAudioText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessageOutputAudioText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playAudio: (() { final guardedValue = map['playAudio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessagePlayAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      telephonyTransferCall: (() { final guardedValue = map['telephonyTransferCall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessageTelephonyTransferCall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillmentMessageText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
