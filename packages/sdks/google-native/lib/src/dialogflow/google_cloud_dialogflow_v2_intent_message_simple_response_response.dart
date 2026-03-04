// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse {
  /// Optional. The text to display.
  final pulumi.Input<String> displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  final pulumi.Input<String> ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  final pulumi.Input<String> textToSpeech;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse].
  /// [displayText] Optional. The text to display.
  /// [ssml] One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  /// [textToSpeech] One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse({
    required this.displayText,
    required this.ssml,
    required this.textToSpeech,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayText': displayText,
      'ssml': ssml,
      'textToSpeech': textToSpeech,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse(
      displayText: pulumi.Input.fromValue(map['displayText'] as String),
      ssml: pulumi.Input.fromValue(map['ssml'] as String),
      textToSpeech: pulumi.Input.fromValue(map['textToSpeech'] as String),
    );
  }
}
