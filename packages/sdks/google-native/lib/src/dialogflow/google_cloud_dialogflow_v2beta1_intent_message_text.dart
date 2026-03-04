// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowV2beta1IntentMessageText {
  /// Optional. The collection of the agent's responses.
  final pulumi.Input<List<String>>? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageText].
  /// [text] Optional. The collection of the agent's responses.
  GoogleCloudDialogflowV2beta1IntentMessageText({this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': ?text};
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageText.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageText(
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
