// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_role_dialogflow_v2beta1.dart';

/// {@template pulumi_dialogflow_v2beta1_participant_dialogflow_v2beta1_args_doc}
/// The set of arguments for Participant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_participant_dialogflow_v2beta1_args_doc}
class ParticipantDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final pulumi.Input<Map<String, String>>? documentsMetadataFilters;
  final pulumi.Input<String>? location;
  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final pulumi.Input<String>? name;
  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow uses this user id for billing and measurement. If a user with the same obfuscated_external_user_id is created in a later conversation, Dialogflow will know it's the same user. Dialogflow also uses this user id for Agent Assist suggestion personalization. For example, Dialogflow can use it to provide personalized smart reply suggestions for this user. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final pulumi.Input<String>? obfuscatedExternalUserId;
  final pulumi.Input<String>? project;
  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final pulumi.Input<ParticipantRoleDialogflowV2beta1>? role;

  /// Creates a new [ParticipantDialogflowV2beta1Args].
  /// [conversationId] Required.
  /// [documentsMetadataFilters] Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  /// [location] Optional.
  /// [name] Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  /// [obfuscatedExternalUserId] Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow uses this user id for billing and measurement. If a user with the same obfuscated_external_user_id is created in a later conversation, Dialogflow will know it's the same user. Dialogflow also uses this user id for Agent Assist suggestion personalization. For example, Dialogflow can use it to provide personalized smart reply suggestions for this user. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  /// [project] Optional.
  /// [role] Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  ParticipantDialogflowV2beta1Args({
    required pulumi.Output<String> conversationId,
    pulumi.Output<Map<String, String>>? documentsMetadataFilters,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? obfuscatedExternalUserId,
    pulumi.Output<String>? project,
    pulumi.Output<ParticipantRoleDialogflowV2beta1>? role,
  }) :
      conversationId = pulumi.Input.asInput<String>(conversationId),
      documentsMetadataFilters = pulumi.Input.asOptionalInput<Map<String, String>>(documentsMetadataFilters),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      obfuscatedExternalUserId = pulumi.Input.asOptionalInput<String>(obfuscatedExternalUserId),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<ParticipantRoleDialogflowV2beta1>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'documentsMetadataFilters': ?documentsMetadataFilters,
      'location': ?location,
      'name': ?name,
      'obfuscatedExternalUserId': ?obfuscatedExternalUserId,
      'project': ?project,
      'role': ?pulumi.Input.mapOptionalInputValue<ParticipantRoleDialogflowV2beta1, String>(role, (value) => value.value),
    };
  }

  factory ParticipantDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return ParticipantDialogflowV2beta1Args(
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      documentsMetadataFilters: map['documentsMetadataFilters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['documentsMetadataFilters'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] == null ? null : pulumi.Output.create<String>(map['obfuscatedExternalUserId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<ParticipantRoleDialogflowV2beta1>(ParticipantRoleDialogflowV2beta1.fromValue(map['role'] as String)),
    );
  }
}

