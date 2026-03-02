// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rich Business Messaging (RBM) suggested reply that the user can click instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.
  final pulumi.Input<String>? postbackData;
  /// Suggested reply text.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply].
  /// [postbackData] Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.
  /// [text] Suggested reply text.
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply({
    this.postbackData,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postbackData': ?postbackData,
      'text': ?text,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
      postbackData: map['postbackData'] == null ? null : (map['postbackData'] as String).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}

