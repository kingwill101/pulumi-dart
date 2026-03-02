// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_audio_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_dtmf_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_text_input.dart';

/// Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value.
class GoogleCloudDialogflowCxV3beta1QueryInput {
  /// The natural language speech audio to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AudioInput>? audio;
  /// The DTMF event to be handled.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1DtmfInput>? dtmf;
  /// The event to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1EventInput>? event;
  /// The intent to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1IntentInput>? intent;
  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final pulumi.Input<String> languageCode;
  /// The natural language text to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TextInput>? text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1QueryInput].
  /// [audio] The natural language speech audio to be processed.
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [intent] The intent to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  /// [text] The natural language text to be processed.
  GoogleCloudDialogflowCxV3beta1QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    required this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AudioInput, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'dtmf': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1DtmfInput, Map<String, dynamic>>(dtmf, (value) => value.toMap()),
      'event': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1EventInput, Map<String, dynamic>>(event, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1IntentInput, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'languageCode': languageCode,
      'text': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1TextInput, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1QueryInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1QueryInput(
      audio: map['audio'] == null ? null : (GoogleCloudDialogflowCxV3beta1AudioInput.fromMap((map['audio']! as Map).cast<String, dynamic>())).input(),
      dtmf: map['dtmf'] == null ? null : (GoogleCloudDialogflowCxV3beta1DtmfInput.fromMap((map['dtmf']! as Map).cast<String, dynamic>())).input(),
      event: map['event'] == null ? null : (GoogleCloudDialogflowCxV3beta1EventInput.fromMap((map['event']! as Map).cast<String, dynamic>())).input(),
      intent: map['intent'] == null ? null : (GoogleCloudDialogflowCxV3beta1IntentInput.fromMap((map['intent']! as Map).cast<String, dynamic>())).input(),
      languageCode: (map['languageCode'] as String).input(),
      text: map['text'] == null ? null : (GoogleCloudDialogflowCxV3beta1TextInput.fromMap((map['text']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

