// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about a button.
class GoogleCloudDialogflowV2IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  final pulumi.Input<String>? postback;
  /// Optional. The text to show on the button.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCardButton].
  /// [postback] Optional. The text to send back to the Dialogflow API or a URI to open.
  /// [text] Optional. The text to show on the button.
  const GoogleCloudDialogflowV2IntentMessageCardButton({
    this.postback,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postback': ?postback,
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCardButton.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCardButton(
      postback: (() { final guardedValue = map['postback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

