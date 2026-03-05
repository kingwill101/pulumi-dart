// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an audio clip to be played by the client as part of the response.
class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio {
  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final pulumi.Input<String> audioUri;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio].
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio({
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioUri': audioUri,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(
      audioUri: pulumi.Input.fromValue(map['audioUri'] as String),
    );
  }
}

