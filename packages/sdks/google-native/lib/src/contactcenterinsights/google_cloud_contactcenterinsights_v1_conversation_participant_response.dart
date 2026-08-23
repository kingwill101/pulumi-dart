// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The call participant speaking for a given utterance.
class GoogleCloudContactcenterinsightsV1ConversationParticipantResponse {
  /// Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  final pulumi.Input<String> dialogflowParticipant;
  /// The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  final pulumi.Input<String> dialogflowParticipantName;
  /// Obfuscated user ID from Dialogflow.
  final pulumi.Input<String> obfuscatedExternalUserId;
  /// The role of the participant.
  final pulumi.Input<String> role;
  /// A user-specified ID representing the participant.
  final pulumi.Input<String> userId;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationParticipantResponse].
  /// [dialogflowParticipant] Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  /// [dialogflowParticipantName] The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  /// [obfuscatedExternalUserId] Obfuscated user ID from Dialogflow.
  /// [role] The role of the participant.
  /// [userId] A user-specified ID representing the participant.
  const GoogleCloudContactcenterinsightsV1ConversationParticipantResponse({
    required this.dialogflowParticipant,
    required this.dialogflowParticipantName,
    required this.obfuscatedExternalUserId,
    required this.role,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowParticipant': dialogflowParticipant,
      'dialogflowParticipantName': dialogflowParticipantName,
      'obfuscatedExternalUserId': obfuscatedExternalUserId,
      'role': role,
      'userId': userId,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationParticipantResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationParticipantResponse(
      dialogflowParticipant: pulumi.Input.fromValue(map['dialogflowParticipant'] as String),
      dialogflowParticipantName: pulumi.Input.fromValue(map['dialogflowParticipantName'] as String),
      obfuscatedExternalUserId: pulumi.Input.fromValue(map['obfuscatedExternalUserId'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
