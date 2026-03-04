// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2IntentMessageSimpleResponse {
  /// Optional. The text to display.
  final pulumi.Input<String>? displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  final pulumi.Input<String>? ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  final pulumi.Input<String>? textToSpeech;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSimpleResponse].
  /// [displayText] Optional. The text to display.
  /// [ssml] One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  /// [textToSpeech] One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  GoogleCloudDialogflowV2IntentMessageSimpleResponse({
    this.displayText,
    this.ssml,
    this.textToSpeech,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayText': ?displayText,
      'ssml': ?ssml,
      'textToSpeech': ?textToSpeech,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponse(
      displayText: (() {
        final guardedValue = map['displayText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ssml: (() {
        final guardedValue = map['ssml'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      textToSpeech: (() {
        final guardedValue = map['textToSpeech'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
