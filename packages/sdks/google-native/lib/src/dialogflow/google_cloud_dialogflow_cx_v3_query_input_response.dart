// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_audio_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_dtmf_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_intent_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_text_input_response.dart';

/// Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value.
class GoogleCloudDialogflowCxV3QueryInputResponse {
  /// The natural language speech audio to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3AudioInputResponse> audio;
  /// The DTMF event to be handled.
  final pulumi.Input<GoogleCloudDialogflowCxV3DtmfInputResponse> dtmf;
  /// The event to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3EventInputResponse> event;
  /// The intent to be triggered.
  final pulumi.Input<GoogleCloudDialogflowCxV3IntentInputResponse> intent;
  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final pulumi.Input<String> languageCode;
  /// The natural language text to be processed.
  final pulumi.Input<GoogleCloudDialogflowCxV3TextInputResponse> text;

  /// Creates a new [GoogleCloudDialogflowCxV3QueryInputResponse].
  /// [audio] The natural language speech audio to be processed.
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [intent] The intent to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  /// [text] The natural language text to be processed.
  const GoogleCloudDialogflowCxV3QueryInputResponse({
    required this.audio,
    required this.dtmf,
    required this.event,
    required this.intent,
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3AudioInputResponse, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'dtmf': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3DtmfInputResponse, Map<String, dynamic>>(dtmf, (value) => value.toMap()),
      'event': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3EventInputResponse, Map<String, dynamic>>(event, (value) => value.toMap()),
      'intent': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3IntentInputResponse, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'languageCode': languageCode,
      'text': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3TextInputResponse, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3QueryInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3QueryInputResponse(
      audio: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AudioInputResponse.fromMap((map['audio']! as Map).cast<String, dynamic>())),
      dtmf: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3DtmfInputResponse.fromMap((map['dtmf']! as Map).cast<String, dynamic>())),
      event: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3EventInputResponse.fromMap((map['event']! as Map).cast<String, dynamic>())),
      intent: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3IntentInputResponse.fromMap((map['intent']! as Map).cast<String, dynamic>())),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      text: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3TextInputResponse.fromMap((map['text']! as Map).cast<String, dynamic>())),
    );
  }
}

