// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_response_message_conversation_success.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_live_agent_handoff.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_output_audio_text.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_play_audio.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_telephony_transfer_call.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text.dart';

/// Represents a response message that can be returned by a conversational agent. Response messages are also used for output audio synthesis. The approach is as follows: * If at least one OutputAudioText response is present, then all OutputAudioText responses are linearly concatenated, and the result is used for output audio synthesis. * If the OutputAudioText responses are a mixture of text and SSML, then the concatenated result is treated as SSML; otherwise, the result is treated as either text or SSML as appropriate. The agent designer should ideally use either text or SSML consistently throughout the bot design. * Otherwise, all Text responses are linearly concatenated, and the result is used for output audio synthesis. This approach allows for more sophisticated user experience scenarios, where the text displayed to the user may differ from what is heard.
class GoogleCloudDialogflowCxV3beta1ResponseMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final String? channel;
  /// Indicates that the conversation succeeded.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess? conversationSuccess;
  /// Represents info card for knowledge answers, to be better rendered in Dialogflow Messenger.
  final Map<String, dynamic>? knowledgeInfoCard;
  /// Hands off conversation to a human agent.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff? liveAgentHandoff;
  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText? outputAudioText;
  /// Returns a response containing a custom, platform-specific payload.
  final Map<String, String>? payload;
  /// Signal that the client should play an audio clip hosted at a client-specific URI. Dialogflow uses this to construct mixed_audio. However, Dialogflow itself does not try to read or process the URI in any way.
  final GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio? playAudio;
  /// A signal that the client should transfer the phone call connected to this agent to a third-party endpoint.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall? telephonyTransferCall;
  /// Returns a text response.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageText? text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessage].
  /// [channel] The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  /// [conversationSuccess] Indicates that the conversation succeeded.
  /// [knowledgeInfoCard] Represents info card for knowledge answers, to be better rendered in Dialogflow Messenger.
  /// [liveAgentHandoff] Hands off conversation to a human agent.
  /// [outputAudioText] A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// [payload] Returns a response containing a custom, platform-specific payload.
  /// [playAudio] Signal that the client should play an audio clip hosted at a client-specific URI. Dialogflow uses this to construct mixed_audio. However, Dialogflow itself does not try to read or process the URI in any way.
  /// [telephonyTransferCall] A signal that the client should transfer the phone call connected to this agent to a third-party endpoint.
  /// [text] Returns a text response.
  GoogleCloudDialogflowCxV3beta1ResponseMessage({
    this.channel,
    this.conversationSuccess,
    this.knowledgeInfoCard,
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
      'conversationSuccess': ?conversationSuccess == null ? null : conversationSuccess!.toMap(),
      'knowledgeInfoCard': ?knowledgeInfoCard,
      'liveAgentHandoff': ?liveAgentHandoff == null ? null : liveAgentHandoff!.toMap(),
      'outputAudioText': ?outputAudioText == null ? null : outputAudioText!.toMap(),
      'payload': ?payload,
      'playAudio': ?playAudio == null ? null : playAudio!.toMap(),
      'telephonyTransferCall': ?telephonyTransferCall == null ? null : telephonyTransferCall!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessage(
      channel: map['channel'] == null ? null : map['channel'] as String,
      conversationSuccess: map['conversationSuccess'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromMap((map['conversationSuccess'] as Map).cast<String, dynamic>()),
      knowledgeInfoCard: map['knowledgeInfoCard'] == null ? null : (map['knowledgeInfoCard'] as Map).cast<String, dynamic>(),
      liveAgentHandoff: map['liveAgentHandoff'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromMap((map['liveAgentHandoff'] as Map).cast<String, dynamic>()),
      outputAudioText: map['outputAudioText'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromMap((map['outputAudioText'] as Map).cast<String, dynamic>()),
      payload: map['payload'] == null ? null : (map['payload'] as Map).cast<String, String>(),
      playAudio: map['playAudio'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromMap((map['playAudio'] as Map).cast<String, dynamic>()),
      telephonyTransferCall: map['telephonyTransferCall'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall.fromMap((map['telephonyTransferCall'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

