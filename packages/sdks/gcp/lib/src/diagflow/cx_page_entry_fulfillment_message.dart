// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_entry_fulfillment_message_conversation_success.dart';
import 'cx_page_entry_fulfillment_message_live_agent_handoff.dart';
import 'cx_page_entry_fulfillment_message_output_audio_text.dart';
import 'cx_page_entry_fulfillment_message_play_audio.dart';
import 'cx_page_entry_fulfillment_message_telephony_transfer_call.dart';
import 'cx_page_entry_fulfillment_message_text.dart';

class CxPageEntryFulfillmentMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final pulumi.Input<String>? channel;
  /// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
  /// * In a webhook response when you determine that you handled the customer issue.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessageConversationSuccess>? conversationSuccess;
  /// Indicates that the conversation should be handed off to a live agent.
  /// Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
  /// * In a webhook response when you determine that the customer issue can only be handled by a human.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessageLiveAgentHandoff>? liveAgentHandoff;
  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessageOutputAudioText>? outputAudioText;
  /// Returns a response containing a custom, platform-specific payload.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  final pulumi.Input<String>? payload;
  /// Specifies an audio clip to be played by the client as part of the response.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessagePlayAudio>? playAudio;
  /// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessageTelephonyTransferCall>? telephonyTransferCall;
  /// The text response message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillmentMessageText>? text;

  /// Creates a new [CxPageEntryFulfillmentMessage].
  /// [channel] The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  /// [conversationSuccess] Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// [liveAgentHandoff] Indicates that the conversation should be handed off to a live agent.
  /// [outputAudioText] A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// [payload] Returns a response containing a custom, platform-specific payload.
  /// [playAudio] Specifies an audio clip to be played by the client as part of the response.
  /// [telephonyTransferCall] Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// [text] The text response message.
  CxPageEntryFulfillmentMessage({
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
      'conversationSuccess': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessageConversationSuccess, Map<String, dynamic>>(conversationSuccess, (value) => value.toMap()),
      'liveAgentHandoff': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessageLiveAgentHandoff, Map<String, dynamic>>(liveAgentHandoff, (value) => value.toMap()),
      'outputAudioText': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessageOutputAudioText, Map<String, dynamic>>(outputAudioText, (value) => value.toMap()),
      'payload': ?payload,
      'playAudio': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessagePlayAudio, Map<String, dynamic>>(playAudio, (value) => value.toMap()),
      'telephonyTransferCall': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessageTelephonyTransferCall, Map<String, dynamic>>(telephonyTransferCall, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillmentMessageText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory CxPageEntryFulfillmentMessage.fromMap(Map<String, dynamic> map) {
    return CxPageEntryFulfillmentMessage(
      channel: map['channel'] == null ? null : (map['channel']! as String).input(),
      conversationSuccess: map['conversationSuccess'] == null ? null : (CxPageEntryFulfillmentMessageConversationSuccess.fromMap((map['conversationSuccess']! as Map).cast<String, dynamic>())).input(),
      liveAgentHandoff: map['liveAgentHandoff'] == null ? null : (CxPageEntryFulfillmentMessageLiveAgentHandoff.fromMap((map['liveAgentHandoff']! as Map).cast<String, dynamic>())).input(),
      outputAudioText: map['outputAudioText'] == null ? null : (CxPageEntryFulfillmentMessageOutputAudioText.fromMap((map['outputAudioText']! as Map).cast<String, dynamic>())).input(),
      payload: map['payload'] == null ? null : (map['payload']! as String).input(),
      playAudio: map['playAudio'] == null ? null : (CxPageEntryFulfillmentMessagePlayAudio.fromMap((map['playAudio']! as Map).cast<String, dynamic>())).input(),
      telephonyTransferCall: map['telephonyTransferCall'] == null ? null : (CxPageEntryFulfillmentMessageTelephonyTransferCall.fromMap((map['telephonyTransferCall']! as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (CxPageEntryFulfillmentMessageText.fromMap((map['text']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

