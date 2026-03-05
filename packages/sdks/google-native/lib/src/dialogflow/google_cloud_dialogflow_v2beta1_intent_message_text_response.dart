// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowV2beta1IntentMessageTextResponse {
  /// Optional. The collection of the agent's responses.
  final pulumi.Input<List<String>> text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTextResponse].
  /// [text] Optional. The collection of the agent's responses.
  GoogleCloudDialogflowV2beta1IntentMessageTextResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTextResponse(
      text: pulumi.Input.fromValue((map['text'] as List).cast<String>()),
    );
  }
}

