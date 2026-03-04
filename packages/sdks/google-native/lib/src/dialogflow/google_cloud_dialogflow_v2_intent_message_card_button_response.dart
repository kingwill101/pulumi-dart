// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about a button.
class GoogleCloudDialogflowV2IntentMessageCardButtonResponse {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  final pulumi.Input<String> postback;

  /// Optional. The text to show on the button.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCardButtonResponse].
  /// [postback] Optional. The text to send back to the Dialogflow API or a URI to open.
  /// [text] Optional. The text to show on the button.
  GoogleCloudDialogflowV2IntentMessageCardButtonResponse({
    required this.postback,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'postback': postback, 'text': text};
  }

  factory GoogleCloudDialogflowV2IntentMessageCardButtonResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageCardButtonResponse(
      postback: pulumi.Input.fromValue(map['postback'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
