// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Dialogflow source of conversation data.
class GoogleCloudContactcenterinsightsV1DialogflowSourceResponse {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final pulumi.Input<String> audioUri;
  /// The name of the Dialogflow conversation that this conversation resource is derived from. Format: projects/{project}/locations/{location}/conversations/{conversation}
  final pulumi.Input<String> dialogflowConversation;

  /// Creates a new [GoogleCloudContactcenterinsightsV1DialogflowSourceResponse].
  /// [audioUri] Cloud Storage URI that points to a file that contains the conversation audio.
  /// [dialogflowConversation] The name of the Dialogflow conversation that this conversation resource is derived from. Format: projects/{project}/locations/{location}/conversations/{conversation}
  GoogleCloudContactcenterinsightsV1DialogflowSourceResponse({
    required this.audioUri,
    required this.dialogflowConversation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioUri': audioUri,
      'dialogflowConversation': dialogflowConversation,
    };
  }

  factory GoogleCloudContactcenterinsightsV1DialogflowSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1DialogflowSourceResponse(
      audioUri: pulumi.Input.fromValue(map['audioUri'] as String),
      dialogflowConversation: pulumi.Input.fromValue(map['dialogflowConversation'] as String),
    );
  }
}

