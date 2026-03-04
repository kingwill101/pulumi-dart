// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The text response message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final pulumi.Input<bool> allowPlaybackInterruption;

  /// A collection of text responses.
  final pulumi.Input<List<String>> text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse].
  /// [allowPlaybackInterruption] Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  /// [text] A collection of text responses.
  GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse({
    required this.allowPlaybackInterruption,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': allowPlaybackInterruption,
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse(
      allowPlaybackInterruption: pulumi.Input.fromValue(
        map['allowPlaybackInterruption'] as bool,
      ),
      text: pulumi.Input.fromValue((map['text'] as List).cast<String>()),
    );
  }
}
