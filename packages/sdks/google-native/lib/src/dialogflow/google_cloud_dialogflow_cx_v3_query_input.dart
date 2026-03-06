// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_audio_input.dart';
import 'google_cloud_dialogflow_cx_v3_dtmf_input.dart';
import 'google_cloud_dialogflow_cx_v3_event_input.dart';
import 'google_cloud_dialogflow_cx_v3_intent_input.dart';
import 'google_cloud_dialogflow_cx_v3_text_input.dart';

/// Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value.
class GoogleCloudDialogflowCxV3QueryInput {
  /// The natural language speech audio to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3AudioInput>? audio;
  /// The DTMF event to be handled.
  final pulumi.Input<GoogleCloudDialogflowCxV3DtmfInput>? dtmf;
  /// The event to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3EventInput>? event;
  /// The intent to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3IntentInput>? intent;
  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final pulumi.Input<String> languageCode;
  /// The natural language text to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3TextInput>? text;

  /// Creates a new [GoogleCloudDialogflowCxV3QueryInput].
  /// [audio] The natural language speech audio to be processed.
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [intent] The intent to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  /// [text] The natural language text to be processed.
  const GoogleCloudDialogflowCxV3QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    required this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AudioInput, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'dtmf': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3DtmfInput, Map<String, dynamic>>(dtmf, (value) => value.toMap()),
      'event': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3EventInput, Map<String, dynamic>>(event, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3IntentInput, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'languageCode': languageCode,
      'text': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3TextInput, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3QueryInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3QueryInput(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AudioInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dtmf: (() { final guardedValue = map['dtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3DtmfInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3EventInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3IntentInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3TextInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

