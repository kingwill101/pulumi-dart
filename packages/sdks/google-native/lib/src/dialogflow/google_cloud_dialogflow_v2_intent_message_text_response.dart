// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowV2IntentMessageTextResponse {
  /// Optional. The collection of the agent's responses.
  final pulumi.Input<List<String>> text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTextResponse].
  /// [text] Optional. The collection of the agent's responses.
  GoogleCloudDialogflowV2IntentMessageTextResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTextResponse(
      text: ((map['text'] as List).cast<String>()).input(),
    );
  }
}

