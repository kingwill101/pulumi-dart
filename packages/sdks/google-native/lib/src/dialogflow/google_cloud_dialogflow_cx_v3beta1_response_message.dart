// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_response_message_conversation_success.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_live_agent_handoff.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_output_audio_text.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_play_audio.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_telephony_transfer_call.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text.dart';

/// Represents a response message that can be returned by a conversational agent. Response messages are also used for output audio synthesis. The approach is as follows: * If at least one OutputAudioText response is present, then all OutputAudioText responses are linearly concatenated, and the result is used for output audio synthesis. * If the OutputAudioText responses are a mixture of text and SSML, then the concatenated result is treated as SSML; otherwise, the result is treated as either text or SSML as appropriate. The agent designer should ideally use either text or SSML consistently throughout the bot design. * Otherwise, all Text responses are linearly concatenated, and the result is used for output audio synthesis. This approach allows for more sophisticated user experience scenarios, where the text displayed to the user may differ from what is heard.
class GoogleCloudDialogflowCxV3beta1ResponseMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final pulumi.Input<String>? channel;

  /// Indicates that the conversation succeeded.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
  >?
  conversationSuccess;

  /// Represents info card for knowledge answers, to be better rendered in Dialogflow Messenger.
  final pulumi.Input<Map<String, dynamic>>? knowledgeInfoCard;

  /// Hands off conversation to a human agent.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
  >?
  liveAgentHandoff;

  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
  >?
  outputAudioText;

  /// Returns a response containing a custom, platform-specific payload.
  final pulumi.Input<Map<String, String>>? payload;

  /// Signal that the client should play an audio clip hosted at a client-specific URI. Dialogflow uses this to construct mixed_audio. However, Dialogflow itself does not try to read or process the URI in any way.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio>?
  playAudio;

  /// A signal that the client should transfer the phone call connected to this agent to a third-party endpoint.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
  >?
  telephonyTransferCall;

  /// Returns a text response.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ResponseMessageText>? text;

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
      'conversationSuccess':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess,
            Map<String, dynamic>
          >(conversationSuccess, (value) => value.toMap()),
      'knowledgeInfoCard': ?knowledgeInfoCard,
      'liveAgentHandoff':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff,
            Map<String, dynamic>
          >(liveAgentHandoff, (value) => value.toMap()),
      'outputAudioText':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText,
            Map<String, dynamic>
          >(outputAudioText, (value) => value.toMap()),
      'payload': ?payload,
      'playAudio':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio,
            Map<String, dynamic>
          >(playAudio, (value) => value.toMap()),
      'telephonyTransferCall':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall,
            Map<String, dynamic>
          >(telephonyTransferCall, (value) => value.toMap()),
      'text':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1ResponseMessageText,
            Map<String, dynamic>
          >(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessage(
      channel: (() {
        final guardedValue = map['channel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      conversationSuccess: (() {
        final guardedValue = map['conversationSuccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      knowledgeInfoCard: (() {
        final guardedValue = map['knowledgeInfoCard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      liveAgentHandoff: (() {
        final guardedValue = map['liveAgentHandoff'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      outputAudioText: (() {
        final guardedValue = map['outputAudioText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      payload: (() {
        final guardedValue = map['payload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      playAudio: (() {
        final guardedValue = map['playAudio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      telephonyTransferCall: (() {
        final guardedValue = map['telephonyTransferCall'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
